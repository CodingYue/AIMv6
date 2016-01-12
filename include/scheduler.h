/*
 * Copyright (C) 2015 Yue Yang <this.isssssyy@gmail.com>
 *
 * This program is free software; you can redistribute  it and/or modify it
 * under  the terms of  the GNU General  Public License as published by the
 * Free Software Foundation;  either version 2 of the  License, or (at your
 * option) any later version.
 *
 */


#ifndef _SCHEDULER_H
#define _SCHEDULER_H

#define NCPU 1

struct cpu {
	u8 id;
	bool started;
	struct context next_context;
	struct context *scheduler;
	struct proc *proc;
};

struct cpu *get_cur_cpu();
void schedule();
#endif