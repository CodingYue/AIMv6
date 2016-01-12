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
#define DEFAULT_PROC_CPSR 0x10
#define DEFAULT_PROC_KERN_STACK 0xE0000000
#define DEFAULT_PROC_USER_STACK 0x80000000

enum procstate { UNUSED, EMBRYO, READY, BLOCK, RUNNING, ZOMBIE, SLEEPING};

struct context {
	u32 cpsr, r[16];
	void *ttb;
};

typedef struct proc {
	u32 pgaddr;
	u32 pid;
	enum procstate state;
	struct proc *parent;
	struct context *context;
	int killed;
} proc_t;

struct proc *get_procs();
void create_first_process();
proc_t *alloc_proc();

#endif