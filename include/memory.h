
#ifndef _MEMORY_H
#define _MEMORY_H

#include <sys/types.h>
#include <kernel.h>

typedef struct page_block {
	struct page_block *next;
	u32 size; /* Multiple of 4K, in bytes */
} page_block_t;
page_block_t *free_list;

void memory_init();
u8* kalloc(u32);
int kfree(u8*, u32);

#endif
