/*
 * Copyright (C) 2015 Yue Yang <this.isssssyy@gmail.com>
 *
 * This program is free software; you can redistribute  it and/or modify it
 * under  the terms of  the GNU General  Public License as published by the
 * Free Software Foundation;  either version 2 of the  License, or (at your
 * option) any later version.
 *
 */

#ifndef _EXCEPTION_H
#define _EXCEPTION_H

#define INTERRUPT_VECTOR_BASE 0x80700000

void interrupt_init();
void SWI();
void print_cpsr();

#endif