/*
 * Copyright (C) 2015 Yue Yang <this.isssssyy@gmail.com>
 *
 * This program is free software; you can redistribute  it and/or modify it
 * under  the terms of  the GNU General  Public License as published by the
 * Free Software Foundation;  either version 2 of the  License, or (at your
 * option) any later version.
 *
 */

#ifndef _PROCESS_H
#define _PROCESS_H

#define NPROC 64
#define KSTACK_SIZE 0x4000

enum procstate { UNUSED, EMBRYO, READY, BLOCK, RUNNING, ZOMBIE, SLEEPING};

struct context {
	u32 PC, R[15], CPSR, SPSR;
};

typedef struct proc {
	u32 sz;
	u32 pgaddr;
	u32 pid;
	enum procstate state;
	u8 *kstack;
	struct proc *parent;
	struct context *context;
	int killed;
} proc_t;

proc_t *rootproc;
void create_first_process();
proc_t *alloc_proc();

#endif