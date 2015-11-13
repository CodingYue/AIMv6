/*
 * Copyright (C) 2015 Yue Yang <this.isssssyy@gmail.com>
 *
 * This program is free software; you can redistribute  it and/or modify it
 * under  the terms of  the GNU General  Public License as published by the
 * Free Software Foundation;  either version 2 of the  License, or (at your
 * option) any later version.
 *
 */

#include <kernel.h>
#include <mmu.h>


#define MTB_ADDR 0x2000000
#define MTB_FLAG 0x5E2

void mmu_mmap(u32 va, u32 pa, u32 table_addr) 
{
	table_addr += (va >> 20) << 2; 
	*(u32 *) table_addr = ((pa >> 20) << 4) + MTB_FLAG;
}

void enable_mmu(void) 
{
	for (u32 count = 0, va = 0; count < 4096; ++count, va += SECTION_SIZE) {
		mmu_mmap(va, va, TTB1_ADDR);
	}
	/* Mapping firmware above KERN_BASE */
	mmu_mmap(KERN_BASE + FIRMWARE_ADDR, FIRMWARE_ADDR, MTB_ADDR);
	/* Mapping KERN above KERN_BASE */
	mmu_mmap(KERN_BASE + KERN_ADDR, KERN_ADDR, MTB_ADDR);
	/*
		TO DO
		Mapping device that needed to use	
	*/
	asm volatile (
		"ldr r0, MTB_ADDR\n\t"
		"mcr p15, 0, r0, c2, c0, 0\n\t"
		"mrc p15, 0, r1, c1, c0, 0\n\t"
		"mcr p15, 0, r1, c8, c7, 0\n\t"
        "mrc p15, 0, r0, c1, c0, 0\n\t"
        "orr r0, r0, #1\n\t"
        "mcr p15, 0, r0, c1, c0, 0\n\t" //enable MMU
	);
}