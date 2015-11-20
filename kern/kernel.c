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

//void(*uart_spin_puts)(char *) = (void *) 0x1ff0000C;

int main(void) 
{
//	uart_enable();
	low_exec();
	void(*puts)(char *) = (void *) 0x1ff0000C;

	/*	Jump above KERN_BASE 
	 *	Once jump above KERN_BASE, firmware will be abandoned.
	 *	Kernel stack physical adrress [512-16, 512] MB.
	 */

	asm volatile (
		"mov sp, %0\n\t"
		"movs fp, sp\n\t"
		"blx high_exec\n\t"
		:
		:"r"(DEVICE_BASE)
		:
	);
	return 0;
}