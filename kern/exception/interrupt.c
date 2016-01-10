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

static inline unsigned int *get_vectors_address(void)
{
    unsigned int v;

    /* read SCTLR */
    asm volatile("mrc p15, 0, %0, c1, c0, 0\n"
            : "=r" (v) : : );
    if (v & (1<<13))
        return (unsigned int *) 0xffff0000;
    /* read VBAR */
    asm volatile("mrc p15, 0, %0, c12, c0, 0\n"
            : "=r" (v) : : );
    return (unsigned int *) v;
}
void set_sp(u32 mode, u32 ret_mode, u32 sp) 
{
    asm volatile(
        "MOV R8, FP"
    );

    asm volatile(
        "MRS R12, CPSR;"
        "BIC R12, R12, #0x1F;"
        "ORR R12, R12, %0;"
        "MSR CPSR_c, R12"
        :
        :"r"(mode)
    );

    asm volatile(
        "MOV FP, %0;"
        "MOV SP, FP;"
        :
        :"r"(sp)
        :
    );

    asm volatile(
        "MRS R12, CPSR;"
        "BIC R12, R12, #0x1F;"
        "ORR R12, R12, %0;"
        "MSR CPSR_c, R12"
        :
        : "r"(ret_mode)
        : "r12"
    );

    asm volatile(
        "MOV FP, R8"
    );
}


void interrupt_init()
{
    uart_spin_puts("Enable Interrupt\r\n");
    
	asm volatile(
 		"mcr p15, 0, %0, c12, c0, 0\r\n"
 		:
 		: "r"(INTERRUPT_VECTOR_BASE)
 		:
 	);
	
	puthex(get_vectors_address());

    interrupt_enable();

    uart_spin_puts("setting IRQ SP\r\n");
    set_sp(IRQ_MODE, SYS_MODE, IRQ_STACK);
    uart_spin_puts("IRQ SP set\r\n");
     // set SVC SP
    uart_spin_puts("setting SVC SP\r\n");
    set_sp(SVC_MODE, SYS_MODE, SVC_STACK);
    uart_spin_puts("SVC SP set\r\n");

    uart_spin_puts("Enable Interrupt FINISHED\r\n");
}
void print_cpsr()
{
	u32 cpsr;
	asm volatile(
		"mrs r0, cpsr\n"
		"mov %0, r0" : "=r"(cpsr)
	);
	put_str_hex("CPSR = ", cpsr);
}

void mode_switch(u32 mode)
{
	asm volatile(
		"mrs r0, cpsr\n"
		"bic r0, r0, #0x1F\n"
		"orr r0, r0, %0\n"
		"msr cpsr, r0\n"
		:
		: "r"(mode)
		: "r0"
	);
}

void C_SVC_handler()
{
	uart_spin_puts("SVC Handler\r\n");
}

void C_prefetch_abort_handler()
{
	uart_spin_puts("prefetch_abort_handler\r\n");
}

void C_data_abort_handler()
{
	uart_spin_puts("data_abort_handler\r\n");
}

void C_IRQ_handler()
{
	uart_spin_puts("IRQ_handler\r\n");
}
void SWI()
{
	puthex(get_vectors_address());
	uart_spin_puts("SWI\r\n");
	asm volatile (
		"swi 0x100\n"
	);
	uart_spin_puts("SWI FINISHED!\r\n");
}