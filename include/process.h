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

typedef struct context {
	u32 PC, R[15], CPSR, SPSR;
} context_t;

typedef struct proc {
	u32 sz;
	u32 pgaddr;
	u32 pid;
	enum procstate state;
	u8 *kstack;
	//struct trapframe 
	struct proc *parent;
	context_t *context;
	int killed;
} proc_t;

void create_first_process();
proc_t *alloc_proc();

#endif