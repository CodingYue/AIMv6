/*
 * Copyright (C) 2015 Yue Yang <this.isssssyy@gmail.com>
 *
 * This program is free software; you can redistribute  it and/or modify it
 * under  the terms of  the GNU General  Public License as published by the
 * Free Software Foundation;  either version 2 of the  License, or (at your
 * option) any later version.
 *
 */



#include <memory.h>
#include <kernel.h>
/*
 *	Memory Management.
 */

page_block_t *page_bound_0x200 = NULL;
page_block_t *page_bound_0x400 = NULL;

u32 alloc_align(u32 boundary)
{
	if (boundary == 0x200) {
		if (page_bound_0x200 == NULL || page_bound_0x400->size == 0) {
			page_bound_0x200 = alloc_pages(1);
		}
		page_bound_0x200->size -= 0x200;
		return page_bound_0x200->pa + page_bound_0x200->size;
	}
	if (boundary == 0x400) {
		if (page_bound_0x400 == NULL || page_bound_0x400->size == 0) {
			page_bound_0x400 = alloc_pages(1);
		}
		page_bound_0x400->size -= 0x400;
		return page_bound_0x400->pa + page_bound_0x400->size;
	}
	if (boundary == 0x4000) {
		return alloc_pages(4)->pa;
	}
	return NULL;
}
void page_map(u32 va, u32 pa, u32 mtb_va)
{
	u32* mtb_pte = (u32 *) mtb_va;
	mtb_pte += (va >> 20);

	if ((*mtb_pte & 0x3) == 0) {
		*mtb_pte = alloc_align(1);
	}
}
void memory_init()
{
	
	uart_spin_puts("Memroy init begin \r\n");

	/* Clear lower memory address */
	for (u32 va = 0x100000; va < KERN_BASE; va += SECTION_SIZE) {

		u32* mtb_pte = (u32*) KERN_MTB_VA;
		mtb_pte += (va >> 20);
		*mtb_pte = (*mtb_pte >> 2) << 2;
	}
	uart_spin_puts("Clear lower memory address OK\r\n");

	/* Invalidate TLB and cache */
	asm volatile (
		"mov     r1, #0\n\t"
		"mcr     p15, 0, r1, c8, c7, 0\n\t"   /* Invalidate entire unified TLB */
    	"mcr     p15, 0, r1, c8, c6, 0\n\t"   /* Invalidate entire data TLB */
    	"mcr     p15, 0, r1, c8, c5, 0\n\t"   /* Invalidate entire instruction TLB */
		"mcr     p15, 0, r1, c7, c5, 6\n\t"   /* Invalidate entire branch prediction array */
		"mcr     p15, 0, r1, c7, c5, 0\n\t"	  /* Invalidate I-cache */
		"mcr     p15, 0, r11, c7, c14, 2\n\t" /* Invalidate D-cache */
    );

    uart_spin_puts("Invalidated TLB.\r\n");


	/* First page block */
	free_list = (page_block_t *) ACCESS_MEMORY_BASE;
	free_list->size = (480-16)<<20;
	free_list->next = NULL;
	free_list->pa = 16<<20;

	
	uart_spin_puts("Memroy init finished\r\n\r\n");

}

page_block_t *alloc_pages(u32 count)
{
	if (count == 0) return NULL;
	u32 allloc_size = count * PAGE_SIZE;

	for (page_block_t *block = free_list, *pre = free_list; block != NULL; pre = block, block = block->next) {
		if (block->size < allloc_size) {
			continue;
		}
		if (block->size == allloc_size) {
			if (block == free_list) {
				free_list = block->next;
			} else {
				pre->next = block->next;
			}
			return block;
		}
		if (block->size > allloc_size) {
			page_block_t *r = (page_block_t*) (u32) block + allloc_size;
			r->next = block->next;
			r->size = block->size - allloc_size;
			r->pa = block->pa + allloc_size;
			if (free_list == block) {
				free_list = r;
			} else {
				pre->next = r;
			}
			return block;
		}
	}
	return NULL;
}

void merge_block(page_block_t* l, page_block_t* r)
{
	if (l == NULL || r == NULL) return;
	if (l->pa + l->size == r->pa) {
		l->size += r->size;
		l->next = r->next;
	}
}

void free_pages(u32 pa, u32 count)
{
	u32 free_size = count * PAGE_SIZE;

	if (pa < free_list->pa) {
		page_block_t *r = (page_block_t*) ((u32) free_list - free_list->pa + pa);
		r->next = free_list;
		r->pa = pa;
		r->size = free_size;
		free_list = r;
		merge_block(free_list, free_list->next);
		return;
	}

	for (page_block_t *block = free_list; block != NULL; block = block->next) {
		if (block->pa + block->size > pa) continue;
		if (block->pa + block->size == pa) {
			block->size += free_size;
			merge_block(block, block->next);
		} else {
			page_block_t* mid = (page_block_t*) ((u32) block - block->pa + pa);
			mid->next = block->next;
			mid->size = free_size;
			mid->pa = pa;
			block->next = mid;
			merge_block(mid, mid->next);
		}
	}
}



