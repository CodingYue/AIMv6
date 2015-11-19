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

page_block_t *free_list;
void section_map(u32 va, u32 pa)
{
	u32 table_addr = KERN_BASE + MTB_ADDR;
	table_addr += (va >> 20) << 2; 
	*(u32 *) table_addr = ((pa >> 20) << 20) + MTB_FLAG;
}
void section_unmap(u32 va)
{
	u32 table_addr = KERN_BASE + MTB_ADDR;
	table_addr += (va >> 20) << 2;
	*(u32 *) table_addr = NULL;
}



void memory_init()
{
	
	uart_spin_puts("Memroy init begin \r\n");

	/* Clear lower memory mapping */
	for (u32 va = 0; va < KERN_BASE; va += SECTION_SIZE) {
		section_unmap(va);
	}
	/* Mapping to access physical memory */
	for (u32 pa = 0x1000000, va = 0x61000000, count = 0; count < 480; ++count, pa += SECTION_SIZE, va += SECTION_SIZE) {
		section_map(va, pa);
	}
	/* Invalidate entire unified TLB */



	/* First page block */
	free_list = (page_block_t *) 0x61000000;
	free_list->size = (480-16)<<20;
	free_list->next = NULL;
	free_list->pa = 16<<20;

	uart_spin_puts("Memroy init finished\r\n");

}

u8 *kalloc(u32 count)
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
			return (u8*) block;
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
			return (u8*) block;
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

void kfree(u32 pa, u32 count)
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



