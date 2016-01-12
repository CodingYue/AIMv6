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

static int pidcnt = 0;
static proc_t *rootproc;


/*
 *  0x402
 *  AP[2:0] 001, Domain 0000
 *  0x422
 *	AP[2:0] 001, Domain 0001
 *	0xC02
 *	AP[2:0] 011, Domain 0001	
 */

struct ppp {
	// struct spinlock lock;
	proc_t proc[NPROC]
};

static struct ppp ptable;

struct proc* get_procs()
{
	put_str_hex("ptable.proc address: ", ptable.proc);
	return ptable.proc;
}

u32 create_page_table()
{
	uart_spin_puts("PROCESS : create page table\r\n");
	u32 *L1_Table = alloc_align(0x4000);
	u32 *KERN_TTB = (u32*) KERN_MTB_VA;

	for (u32 i = 2048; i < 4096; ++i) {
		L1_Table[i] = ((KERN_TTB[i] >> 20) << 20) | 0x422;
	}

	for (u32 i = 0; i < 2048; ++i) {
		L1_Table[i] = 0;
	}

	page_map(DEFAULT_PROC_USER_STACK - 0x1000, alloc_pages(1), L1_Table);
	page_map(DEFAULT_PROC_KERN_STACK - 0x1000, alloc_pages(1), L1_Table);
	uart_spin_puts("PROCESS : create page table finished\r\n");
	put_str_hex("L1_table PA: ", L1_Table - ACCESS_MEMORY_VA_BASE + ACCESS_MEMORY_PA_BASE);

	return L1_Table - ACCESS_MEMORY_VA_BASE + ACCESS_MEMORY_PA_BASE;
}

void init_process(struct proc *p, u32 addr)
{
	uart_spin_puts("PROCESS : initializing process\r\n");
	
	p->pid = pidcnt++;
	p->state = EMBRYO;
	p->pgaddr = create_page_table(); // Level 1 Page Table
	p->context = alloc_align(0x200);
	
	p->context->ttb = create_page_table();
	p->context->cpsr = DEFAULT_PROC_CPSR;
	/* USER STACK */
	p->context->r[13] = p->context->r[11] = DEFAULT_PROC_USER_STACK;
	p->context->r[15] = addr;
	p->killed = 0;

	uart_spin_puts("PROCESS : initializing process finished\r\n");
	//proc->context[14] = (void*) kill();
}

proc_t *alloc_proc()
{
	uart_spin_puts("PROCESS : allocating process\r\n");
	proc_t *p = 0;
	for (p = ptable.proc; p < &ptable.proc[NPROC]; ++p) {
		if (p->state == UNUSED) {
			init_process(p, 0);
			break;
		}
	}
	uart_spin_puts("PROCESS : allocating process finished\r\n");
	return p;
}

void create_first_process()
{
	uart_spin_puts("PROCESS : creating first process\r\n");
	for (proc_t *p = ptable.proc; p < &ptable.proc[NPROC]; p++) {
		p->state = UNUSED;
		p->pid = 7777;
	}
	rootproc = alloc_proc();

	put_str_hex("root proc pid : ", rootproc->pid);
	put_str_hex("root proc cpsr : ", rootproc->context->cpsr);

	rootproc->state = READY;
	uart_spin_puts("PROCESS : creating first process finished\r\n");
}

