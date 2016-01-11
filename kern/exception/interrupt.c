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
        "MRS R12, CPSR;"
        "BIC R12, R12, #0x1F;"
        "ORR R12, R12, %0;"
        "MSR CPSR_c, R12"
        :
        :"r"(mode)
    );

    asm volatile(
        "MOV SP, %0\n"
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

    uart_spin_puts("setting IRQ SP\r\n");
    set_sp(IRQ_MODE, SYS_MODE, IRQ_STACK);
    uart_spin_puts("IRQ SP set\r\n");
    // set SVC SP
    uart_spin_puts("setting SVC SP\r\n");
    set_sp(SVC_MODE, SYS_MODE, SVC_STACK);
    uart_spin_puts("SVC SP set\r\n");


    icc_enable();
    out32(icc_base + ICC_PMR_OFFSET, 0xFF);
    icd_enable();
    irq_enable();
    interrupt_enable();

    u64 cur_time = gtc_get_time();
    put_str_hex("current time (H) : ", cur_time >> 32);
    put_str_hex("current time (L) : ", cur_time & 0xFFFFFFFF);

    enable_gtc_interrupt();

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

u32 read_sp(u32 mode, u32 ret_mode)
{
	asm volatile(
		"mrs r0, cpsr\n"
		"bic r0, r0, #0x1F\n"
		"orr r0, r0, %0\n"
		"msr cpsr, r0\n"
		:
		: "r"(mode)
		: "r2"
	);
    u32 sp = 0;
    asm volatile(
        "mrs r0, cpsr\n"
        "bic r0, r0, #0x1F\n"
        "orr r0, r0, %0\n"
        "msr cpsr, r0\n"
        :
        : "r"(ret_mode)
        : "r2"
    );
    asm volatile (
        "mov %0, sp\n"
        : "=r" (sp)
        : 
        : "r0"
    );
}

void C_SVC_handler()
{
	uart_spin_puts("SVC Handler\r\n");
    print_cpsr();

    u32 sys_sp = read_sp(SYS_MODE, SVC_MODE);
    put_str_hex("system sp = ", sys_sp);

/*
    struct cpu *cpu = &cpus[get_cur_cpu()];
    struct proc *proc = cpu->proc;
    //u32 *sp = (u32 *) proc->context->R[13];
    //u32 calls = *sp;

    switch(calls) {
        case 1 : // fork
            //c_fork();
            break;
        case 2 : // exit
            //c_exit();
            break;
        case 3 : // kill
            //c_kill(*(sp-1));
            break;
        case 4 : // exec
            break;

        default:
            break;
    }
*/
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
	uart_spin_puts("print from IRQ handler before changing mode\r\n");

    u32 id = get_irq_id();
    if (id == 27) {
        uart_spin_puts("received an IRQ from GTC\r\n");
        u64 gtc = gtc_get_time();
        uart_spin_puts("current gtc (H): ");
        puthex(gtc >> 32);
        uart_spin_puts("current gtc (L): ");
        puthex(gtc & 0xFFFFFFFF);
    } else {
        uart_spin_puts("received an IRQ with id: ");
        puthex(id);
    }

    u32 sys_sp = read_sp(SYS_MODE, SVC_MODE);
    put_str_hex("system sp = ", sys_sp);
    end_of_irq(id);
}

void handler_test()
{

    uart_spin_puts("Handler TEST BEGIN :\r\n");

    put_str_hex("Current CPU is ", get_cur_cpu());

    print_cpsr();

    uart_spin_puts("1. SWI\r\n");
    asm volatile (
        "swi #0"
    );
    uart_spin_puts("SWI OK\r\n");

    uart_spin_puts("2. TIME\r\n");
    u64 cur_time = gtc_get_time();
    put_str_hex("current time (H) : ", cur_time >> 32);
    put_str_hex("current time (L) : ", cur_time & 0xFFFFFFFF);

    cur_time = gtc_get_time();
    put_str_hex("current time (H) : ", cur_time >> 32);
    put_str_hex("current time (L) : ", cur_time & 0xFFFFFFFF);

    uart_spin_puts("TIME OK\r\n");

    u64 comp = 0x92050517l;

    put_str_hex("3. CLOCK TEST, COMPARATOR = ", comp);
    set_clock(comp);   
   // while(1);
}

