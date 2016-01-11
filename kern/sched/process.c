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

int pidcnt = 0;
proc_t *rootproc;

struct {
	// struct spinlock lock;
	proc_t proc[NPROC]
} ptable;


void init_process(proc_t *p)
{
	p->sz = 0x8000;
	p->pgaddr = alloc_align(0x4000); // Level 1 Page Table
	p->pid = pidcnt++;
	p->state = EMBRYO;
	p->kstack = alloc_pages(4);
	char *sp = p->kstack + KSTACK_SIZE;
	// sp -= sizeof *p->tf;
	//p->tf = sp;
	sp -= 4;
	//*(u32 *) sp = (u32) trapret;
	sp -= sizeof *p->context;
	p->context = (struct context*) sp;
	p->parent = 0;
	p->killed = false;

}

proc_t *alloc_proc()
{
	uart_spin_puts("PROCESS : allocating process\r\n");
	proc_t *p = 0;
	for (p = ptable.proc; p < &ptable.proc[NPROC]; ++p) {
		if (p->state == UNUSED) {
			init_process(p);
			break;
		}
	}
	uart_spin_puts("PROCESS : allocating process finished\r\n");
	return p;
}

void sayhello(proc_t *proc)
{
	put_str_hex("HELLO, I AM PROCESS #", proc->pid);
}

void create_first_process()
{
	uart_spin_puts("PROCESS : creating first process\r\n");
	for (proc_t *p = ptable.proc; p < &ptable.proc[NPROC]; p++) {
		p->state = UNUSED;
	}
	rootproc = alloc_proc();
	rootproc->state = READY;
	uart_spin_puts("PROCESS : creating first process finished\r\n");
	sayhello(rootproc);
}

