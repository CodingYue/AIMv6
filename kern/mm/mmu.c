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

void mmu_mmap(u32 va, u32 pa, u32 table_addr) 
{
	table_addr += (va >> 20) << 2; 
	*(u32 *) table_addr = ((pa >> 20) << 20) + MTB_FLAG;
}

void enable_mmu(void) 
{

	uart_spin_puts("\r\nEnable MMU\r\n");
	uart_spin_puts("Good Luck!\r\n");

	for (u32 count = 0, va = 0; count < 4096; ++count, va += SECTION_SIZE) {
		mmu_mmap(va, va, MTB_ADDR);
	}
	/* Mapping KERN above KERN_BASE */
	mmu_mmap(KERN_BASE + KERN_ADDR, KERN_ADDR, MTB_ADDR);
	uart_spin_puts("Mapping OK!\r\n");
	/*
		TO DO
		Mapping device that needed to use	
	*/

	/* set TTB address as MTB_ADDR */
	
	asm volatile(
	 	"ldr r0, = 0x2000000\n\t"
        "mcr p15,0,r0,c2,c0,0\n\t" 
    );
	uart_spin_puts("set TTB OK!\r\n");

	/* set DOMAIN */
    asm volatile(
        "ldr r0, =0x55555555\n\t"
        "mcr p15,0,r0,c3,c0,0\n\t"
    );

    /* enable MMU */
    uart_spin_puts("set DOMAIN OK\r\n");
    asm volatile(
        "mrc p15,0,r0,c1,c0,0\n\t"
        "orr r0,r0,#0x1\n\t"
        "mcr p15,0,r0,c1,c0,0\n\t" 
    );

    uart_spin_puts("\r\nMMU enabled\r\n");

}