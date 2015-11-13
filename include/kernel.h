/*
 * Copyright (C) 2015 Yue Yang <this.isssssyy@gmail.com>
 *
 * This program is free software; you can redistribute  it and/or modify it
 * under  the terms of  the GNU General  Public License as published by the
 * Free Software Foundation;  either version 2 of the  License, or (at your
 * option) any later version.
 *
 */

#include <sys/types.h>

#ifndef _KERNEL_H
#define _KERNEL_H

#define KERN_BASE 0x80000000
#define PAGE_SIZE 4096
#define SECTION_SIZE 0x100000
#define FIRMWARE_ADDR 0x1ff00000
#define KERN_ADDR 0x1400000

#endif