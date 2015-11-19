
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
 *	kalloc : number of page.
 *	kfree : physical address, nubmer of page.
 */
u8* kalloc(u32);
void kfree(u32 pa, u32 count);

#endif
