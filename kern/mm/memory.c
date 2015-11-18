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


void mmap(u32 va, u32 pa)
{
	u32 table_addr = KERN_BASE + MTB_ADDR;
	table_addr += (va >> 20) << 2; 
	if (pa == -1) {
		*(u32 *) table_addr = NULL;
	} else {
		*(u32 *) table_addr = ((pa >> 20) << 20) + MTB_FLAG;
	}
}
u32 get_pa(u32 va)
{
	u32 table_addr = KERN_BASE + MTB_ADDR;
	table_addr += (va >> 20) << 2;
	return *table_addr;
}
page_block_t *free_list;
u32 new_block(u32 pa, u32 size)
{
	
}
void memory_init()
{
	/* Clear lower memory mapping */
	
	for (u32 count = 1; count < 2048; ++count) {
		mmap(count * SECTION_SIZE, -1);
	}
	for (u32 count = 0; count < 4; ++count) {
		mmap(MEMORY_BLOCK_POOL_BASE + count * SECTION_SIZE, -1);
	}

}

