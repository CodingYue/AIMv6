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
//void(*puts)(char *) = (void *) 0x1ff0000C;
void mmu_section_map(u32 va, u32 pa) 
{
	u32 table_addr = KERN_MTB_PA + ((va >> 20) << 2);
	*(u32 *) table_addr = ((pa >> 20) << 20) + 0x5E2;
}

void enable_mmu(void) 
{
	void(*puts)(char *) = (void *) 0x1ff0000C;
	puts("\r\nEnable MMU\r\n");
	puts("Good Luck!\r\n");

	for (u32 count = 0, va = 0; count < 4096; ++count, va += SECTION_SIZE) {
		mmu_section_map(va, va);
	}
	/* Mapping KERN above KERN_BASE */
	for (u32 count = 0; count < 10; ++count) {
		mmu_section_map(KERN_BASE + KERN_ADDR + count * SECTION_SIZE, KERN_ADDR + count * SECTION_SIZE);
	}
	/* Mapping MTB above KERN_BASE */
	for (u32 count = 0; count < 4; ++count) {
		mmu_section_map(KERN_MTB_VA + count * SECTION_SIZE, KERN_MTB_PA + count * SECTION_SIZE);
	}

	/* Mapping kernel stack */
	for (u32 count = 1; count <= 16; ++count) {
		mmu_section_map(DEVICE_BASE - count * SECTION_SIZE, RAM_SIZE-count*SECTION_SIZE);
	}

	/* Mapping to access physical memory */
	for (u32 pa = ACCESS_MEMORY_PA_BASE, va = ACCESS_MEMORY_VA_BASE, count = 0; count < 480; ++count, pa += SECTION_SIZE, va += SECTION_SIZE) {
		mmu_section_map(va, pa);
	}

	puts("Mapping OK!\r\n");
	/*
	 *	TO DO
	 *	Mapping device that needed to use	
	*/


	/* set TTB address as KERN_MTB_PA */
	
	asm volatile(
	 	"mov r0, %0\n\t"
        "mcr p15,0,r0,c2,c0,0\n\t" 
        :
        :"r"(KERN_MTB_PA)
        :"r0"
    );
	puts("set TTB OK!\r\n");

	/* set DOMAIN */
    asm volatile(
        "ldr r0, =0x55555555\n\t"
        "mcr p15,0,r0,c3,c0,0\n\t"
    );
    puts("set DOMAIN OK\r\n");

    /* enable MMU */

    asm volatile(
        "mrc p15,0,r0,c1,c0,0\n\t"
        "orr r0,r0,#0x1\n\t"
        "mcr p15,0,r0,c1,c0,0\n\t" 
        "isb\n\t"
        "dsb\n\t"
    );

	asm volatile (
		"mov     r1, #0\n\t"
		"mcr     p15, 0, r1, c8, c7, 0\n\t"   /* Invalidate entire unified TLB */

    	"mcr     p15, 0, r1, c8, c6, 0\n\t"   /* Invalidate entire data TLB */
    	"mcr     p15, 0, r1, c8, c5, 0\n\t"   /* Invalidate entire instruction TLB */
		"mcr     p15, 0, r1, c7, c5, 6\n\t"   /* Invalidate entire branch prediction array */
		"mcr     p15, 0, r1, c7, c5, 0\n\t"	  /* Invalidate I-cache */
		"mcr     p15, 0, r11, c7, c14, 2\n\t" /* Invalidate D-cache */
    );

    asm volatile (
		"mrc     p15, 0, r0, c1, c0, 0\n\t"
        "orr     r0, r0, #0x1000\n\t"
        "orr     r0, r0, #0x0004\n\t"
        "mcr     p15, 0, r0, c1, c0, 0\n\t"
        "dsb\n\t"
        "isb\n\t"
    );

    puts("MMU enabled\r\n\r\n");



}


	
