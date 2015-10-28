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
#define PT_LOAD 1


void mbr_bootmain(void)
{
	volatile void (*boot)(void) = (void*) (PRELOAD_VECTOR_BASE + 0x10);
	boot();
}

