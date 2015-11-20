/*
 * Copyright (C) 2015 Yue Yang <this.isssssyy@gmail.com>
 *
 * This program is free software; you can redistribute  it and/or modify it
 * under  the terms of  the GNU General  Public License as published by the
 * Free Software Foundation;  either version 2 of the  License, or (at your
 * option) any later version.
 *
 */

#ifndef _KERNEL_H
#define _KERNEL_H

#include <sys/types.h>
#include <drivers/serial/uart.h>
#include <drivers/sd/sd-zynq7000.h>
#include <drivers/misc/dtb-zynq7000.h>
#include <sleep.h>
#include <asm/io.h>

void low_exec();
void puthex(u32);
void high_exec();
#define NULL (void*) 0x0
/*
 *	Virtual Memory Layout (KERN_BASE, buttom to up)
 *	2MB NO USE
 *	4MB MTB
 *	10MB KERNEL
 *	1536MB FREE MEMORY
 *	480MB MAPPING PHYSICAL ADDRESS
 *	16MB KERN_STACK
 */

/*		
 *	Physical Memeory Layout (buttom to up)
 *	1MB OCM
 *	1MB MBR AND OTHERS
 *	4MB MTB
 *	10MB KERNEL
 *	480MB FREE MEMORY
 *	16MB KERN_STACK
 */


/* Kernel configure */
#define KERN_BASE 0x80000000
#define KERN_ADDR 0x600000
/* TTB configuare */
#define PAGE_SIZE 4096
#define SECTION_SIZE 0x100000
#define RAM_SIZE 0x20000000

#define KERN_MTB_PA 0x200000
#define KERN_MTB_VA 0x80200000
#define DEVICE_BASE 0xE0000000
#define ACCESS_MEMORY_BASE 0xe1000000

#endif