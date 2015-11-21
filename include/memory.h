
#ifndef _MEMORY_H
#define _MEMORY_H

#include <sys/types.h>
#include <kernel.h>

typedef struct page_block {
	struct page_block *next;
	u32 size; /* Multiple of 4K, in bytes */
	u32 pa; /* Position in physical memory */
} page_block_t;
page_block_t *free_list;

#define MEMORY_BLOCK_POOL_BASE 0x7f000000
void memory_init();

/*
 *	First fit algorithm.
 *	alloc_pages will return #count pages' physical address.
 *	free_pages will free #count pages from pa(physical adress).
 */
page_block_t* alloc_pages(u32 count);
void free_pages(u32 pa, u32 count);
void page_map(u32 pa, u32 va, u32 mtb_va);

/* return boundary align physical address */
u32 alloc_align(u32 boundary);

#endif
