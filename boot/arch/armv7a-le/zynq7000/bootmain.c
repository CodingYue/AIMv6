/*
 * Copyright (C) 2015 David Gao <davidgao1001@gmail.com>
 *
 * This program is free software; you can redistribute  it and/or modify it
 * under  the terms of  the GNU General  Public License as published by the
 * Free Software Foundation;  either version 2 of the  License, or (at your
 * option) any later version.
 *
 */

#include <config.h>

#define PRELOAD_VECTOR_BASE	0x1ff00000
#define MBR_SIZE 446

void (*uart_init)(void) = (void *)(PRELOAD_VECTOR_BASE + 0x4);
void (*uart_enable)(void) = (void *)(PRELOAD_VECTOR_BASE + 0x8);
void (*uart_spin_puts)(const char *) = (void *)(PRELOAD_VECTOR_BASE + 0xC);
void (*puthex)(u32) = (void *) (PRELOAD_VECTOR_BASE + 0x10);

void mbr_bootmain(void)
{
	volatile u32 *mbr = (void *) 0x10002;
	u32 LBA = (u32) mbr[111+2];
	u32 block_number = (u32) (mbr[111+3]);
	puthex(LBA);
	puthex(block_number);
	while(1);
}

