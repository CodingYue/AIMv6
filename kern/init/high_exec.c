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
#include <memory.h>

void high_exec()
{
	memory_init();

    uart_spin_puts("TEST BEGIN\r\n");
    put_str_hex("free_list->size : ", free_list->size);

    page_block_t* a = alloc_pages(12);
    put_str_hex("a->pa : ", a->pa);
    put_str_hex("free_list->pa : ", free_list->pa);

    page_block_t* b = alloc_pages(12);
    put_str_hex("b->pa : ", b->pa);
    put_str_hex("free_list->pa : ", free_list->pa);

    free_pages(a->pa, 16);
    put_str_hex("freelist->pa : ", free_list->pa);
    put_str_hex("freelist->size : ", free_list->size);

    free_pages(a->pa+(16*PAGE_SIZE), 8);
    put_str_hex("freelist->pa : ", free_list->pa);
    put_str_hex("freelist->size : ", free_list->size);

    alloc_pages(2);
    
    
    put_str_hex("freelist->pa : ", free_list->pa);
    put_str_hex("freelist->size : ", free_list->size);

    interrupt_init();
    //handler_test();

    create_first_process();


    struct cpu *cpu = get_cur_cpu();
    struct context *sched = alloc_align(0x200);

    cpu->scheduler = sched;

    sched->r[11] = sched->r[13] = SCHED_STACK;
    sched->r[14] = 0;
    sched->ttb = KERN_MTB_PA;
    sched->r[15] = schedule;
    sched->cpsr = 0b0111011111;

    put_str_hex("schedule address : ", schedule);

    switch_to(sched);

    uart_spin_puts("FINISHED!\r\n");
	while(1);
}
