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
void mmu_mmap(u32 va, u32 pa) 
{
	u32 table_addr = MTB_ADDR + ((va >> 20) << 2);
	*(u32 *) table_addr = ((pa >> 20) << 20) + MTB_FLAG;
}

void enable_mmu(void) 
{
	void(*puts)(char *) = (void *) 0x1ff0000C;
	puts("\r\nEnable MMU\r\n");
	puts("Good Luck!\r\n");

	for (u32 count = 0, va = 0; count < 4096; ++count, va += SECTION_SIZE) {
		mmu_mmap(va, va);
	}
	/* Mapping KERN above KERN_BASE */
	for (u32 count = 0; count < 10; ++count) {
		mmu_mmap(KERN_BASE + KERN_ADDR + count * SECTION_SIZE, KERN_ADDR + count * SECTION_SIZE);
	}
	/* Mapping MTB above KERN_BASE */
	for (u32 count = 0; count < 4; ++count) {
		mmu_mmap(KERN_BASE + MTB_ADDR + count * SECTION_SIZE, MTB_ADDR + count * SECTION_SIZE);
	}

	/* Mapping kernel stack */
	for (u32 count = 1; count <= 16; ++count) {
		mmu_mmap(DEVICE_BASE - count * SECTION_SIZE, RAM_SIZE-count*SECTION_SIZE);
	}

	puts("Mapping OK!\r\n");
	/*
	 *	TO DO
	 *	Mapping device that needed to use	
	*/

	asm volatile (
    "mov     r1, #0\n"
    "mcr     p15, 0, r1, c8, c7, 0\n\t"   /* Invalidate entire unified TLB */
    "mcr     p15, 0, r1, c8, c6, 0\n\t"   /* Invalidate entire data TLB */
    "mcr     p15, 0, r1, c8, c5, 0\n\t"   /* Invalidate entire instruction TLB */
    "mcr     p15, 0, r1, c7, c5, 6\n\t"   /* Invalidate entire branch prediction array */
    );


	/* set TTB address as MTB_ADDR */
	
	asm volatile(
	 	"mov r0, %0\n\t"
        "mcr p15,0,r0,c2,c0,0\n\t" 
        :
        :"r"(MTB_ADDR)
        :"r0"
    );
	puts("set TTB OK!\r\n");

	/* set DOMAIN */
    asm volatile(
        "ldr r0, =0x55555555\n\t"
        "mcr p15,0,r0,c3,c0,0\n\t"
    );

    /* enable MMU */
    puts("set DOMAIN OK\r\n");
    asm volatile(
        "mrc p15,0,r0,c1,c0,0\n\t"
        "orr r0,r0,#0x1\n\t"
        "mcr p15,0,r0,c1,c0,0\n\t" 
    );

    puts("MMU enabled\r\n");

    /* Clear lower memory mapping. */
}


	
