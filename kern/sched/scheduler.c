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

static struct cpu cpus[NCPU];

void copy_context(struct context *cpu_ctx, struct context *ctx)
{
	cpu_ctx->cpsr = ctx->cpsr;
	for (int i = 0; i < 16; ++i) cpu_ctx->r[i] = ctx->r[i];
	cpu_ctx->ttb = ctx->ttb;
}

struct cpu *get_cur_cpu()
{
	int res = -1;
	asm volatile (
		"MRC p15,0,%0,c0,c0,5\n"
		: "=r" (res)
		:
		:
	);
	return &cpus[res & 0x3];
}

void switch_to(const struct context* ctx)
{
	put_str_hex("", ctx->r[15]);
	struct cpu *cpu = get_cur_cpu();
	copy_context(&(cpu->next_context), ctx);

// change ttb
	asm volatile(
		"MOV R0, %0;"
		"MCR p15, 0, R0, c2, c0, 0;" // change ttb
		"MOV R0, #0;"
		"MCR P15, 0, R0, C8, C7, 0;" // invalidate TLBs
		"DSB;"
		"ISB"
		:
		:"r"(cpu->next_context.ttb)
		:"r0"
	);

	// load banked R13 R14
	asm volatile(		
		"MOV R0, %0;"
		"LDMFD R0, {R13-R14}" 
		:
		:"r"(cpu->next_context.r+13)
		:
	);

	// switch to SVC mode
 	asm volatile(
        "MRS R12, CPSR;"
        "BIC R12, R12, #0x1F;"
        "ORR R12, R12, %0;"
        "MSR CPSR_c, R12"
        :
        :"r"(0b10011)
    );

 	// save next_context.cpsr to spsr for further restoring
 	put_str_hex("cpsr = ", cpu->next_context.cpsr);

    asm volatile (
    	"MSR SPSR, %0;"
    	:
    	:"r"(cpu->next_context.cpsr)
    	:
    );

    // load next_context.r[PC] to LR
    asm volatile(
    	"MOV r0, %0;"
    	"LDMFD R0, {R14}"
    	:
    	:"r"(cpu->next_context.r+15)
    	:
    );

    // load general registers
	asm volatile(		
		"MOV R0, %0;"
		"LDMFD R0, {R0-R12}"
		:
		:"r"(cpu->next_context.r)
		:
	);

	// jump to next_context.PC and restore CPSR
	asm volatile(
		"MOVS PC, LR"
	);
}

void schedule()
{
	uart_spin_puts("SCHDULING: BEGIN\r\n");
	struct context *sched = (get_cur_cpu())->scheduler;

	struct proc *proc = get_procs();
	put_str_hex("ptable.proc address: ", proc);


	for (int i = 0; ; i = (i + 1) & (NPROC - 1)) {
		if (proc[i].state == READY) {
			proc[i].state = RUNNING;

			// save CPSR
			asm volatile(
				"MOV R0, %0;"
				"MRS R0, CPSR;"
				"STR R0, [%0];"
				:
				:"r"(sched)
				:"r0"
			);
			//save R0 - R0-R15
			asm volatile(
				"MOV R0, %0;"
				"STMFD R0, {R0-R14};"
				"STR PC, [%0, #60]" // point to the instruction after switch_to
				:
				:"r"(sched->r)
				:"r0"
			);

			switch_to(proc[i].context);
		}
	}

}
