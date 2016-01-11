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

#define KERNEL

#include <sys/types.h>
#include <drivers/serial/uart.h>
#include <drivers/sd/sd-zynq7000.h>
#include <drivers/misc/dtb-zynq7000.h>
#include <drivers/clock/gtc-a9mpcore.h>
#include <sleep.h>
#include <asm/io.h>
#include <asm/irq.h>
#include <exception.h>
#include <process.h>
#include <scheduler.h>

void low_exec();
void puthex(u32);
void high_exec();
#define NULL (void*) 0x0
/*
 *	Virtual Memory Layout (KERN_BASE, buttom to up)
 *	2MB NO USE
 *	4MB MTB
 *	10MB KERNEL
 *	1024MB FREE MEMORY
 *	480MB MAPPING PHYSICAL ADDRESS
 *	16MB KERN_STACK
 *  512MB DEVICE BASE
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
#define ACCESS_MEMORY_VA_BASE 0xC1000000
#define ACCESS_MEMORY_PA_BASE 0x1000000

/* STACK LAYOUT */

#define KERN_STACK 0xE0000000
#define SVC_STACK 0xDF000000
#define IRQ_STACK 0xDF100000

/* INTERRUPT */
#define     USER_MODE   0b10000
#define     SYS_MODE    0b11111
#define     IRQ_MODE    0b10010
#define     SVC_MODE    0b10011


#endif