/*
 * Copyright (C) 2015 Yue Yang <this.isssssyy@gmail.com>
 *
 * This program is free software; you can redistribute  it and/or modify it
 * under  the terms of  the GNU General  Public License as published by the
 * Free Software Foundation;  either version 2 of the  License, or (at your
 * option) any later version.
 *
 */


#include <kernel.h>

struct cpu cpus[NCPU];

struct queue {
	//struct spinlock lock;
	struct proc *proc[NPROC];
	int front, tail;

} rdy_que;


void push(struct queue *rdy, struct proc *p) {
	//acquire_lock(&rdy->lock);

	rdy->tail = (rdy->tail + 1) % NPROC;
	rdy->proc[rdy->tail] = p;
	//release_lock(&rdy->lock);
}
struct proc* pop(struct queue *rdy) {
	//acquire_lock(&rdy->lock);
	if (rdy->front == rdy->tail) return 0;
	rdy->front = (rdy->front + 1) % NPROC;
	struct proc *p = rdy->proc[rdy->front];
		//release_lock(&lock);
	return p;
}
int get_cur_cpu()
{
	int res = -1;
	asm volatile (
		"MRC p15,0,%0,c0,c0,5\n"
		: "=r" (res)
		:
		:
	);
	return res & 0x3;
}

void schedule()
{
	rdy_que.front = rdy_que.tail = 0;
	push(&rdy_que, rootproc);
}
