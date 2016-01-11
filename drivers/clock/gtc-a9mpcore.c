/*
 * Copyright (C) 2015 David Gao <davidgao1001@gmail.com>
 *
 * This program is free software; you can redistribute  it and/or modify it
 * under  the terms of  the GNU General  Public License as published by the
 * Free Software Foundation;  either version 2 of the  License, or (at your
 * option) any later version.
 *
 */

#include <config.h>

#ifdef GTC_A9MPCORE

#include <sys/types.h>
#include <asm/irq.h>
#include <asm/io.h>

#include <drivers/clock/gtc-a9mpcore.h>

u64 gtc_get_time()
{
	u64 time;
	u32 hi, lo, tmp;
	/* HI-LO-HI reading because GTC is 64bit */
	do {
		hi = in32(GTC_BASE + GTC_COUNTER_HI_OFFSET);
		lo = in32(GTC_BASE + GTC_COUNTER_LO_OFFSET);
		tmp = in32(GTC_BASE + GTC_COUNTER_HI_OFFSET);
	} while (hi != tmp);
	time = (u64)hi << 32;
	time |= lo;
	return time;
}

void sleep(int sec)
{
	u64 time, time1;
	time = gtc_get_time();
	time += GTC_TPS * sec;
	do {
		time1 = gtc_get_time();
	} while (time1 < time);
}

void usleep(int usec)
{
	u64 time, time1;
	time = gtc_get_time();
	time += GTC_TPUS * usec;
	do {
		time1 = gtc_get_time();
	} while (time1 < time);
}

void enable_gtc_interrupt()
{
	// enable gtc interrupt
	u32 r = in32(icd_base + ICD_ISER_OFFSET);
	r |= 1 << 27;
	out32(icd_base + ICD_ISER_OFFSET, r);

	// set priority

	r = in32(icd_base + ICD_IPR_OFFSET + 24);
	r &= 0x00FFFFFF;
	r |= 0x80000000;
	out32(icd_base + ICD_IPR_OFFSET + 24, r);

	// set target cpus.
	r = in32(icd_base + ICD_IPTR_OFFSET + 24);
	r &= 0x00FFFFFF;
	r |= 0xFF000000;
	out32(icd_base + ICD_IPTR_OFFSET + 24, r);

	// IRQ enable

	r = in32(GTC_BASE + GTC_CTRL_OFFSET);
	r |= 1<<2;	
	out32(GTC_BASE + GTC_CTRL_OFFSET, r);

}

void set_clock(u64 t)
{
	u32 r;

	r = in32(GTC_BASE + GTC_CTRL_OFFSET);
	r &= ~(1 << 1);
	out32(GTC_BASE + GTC_CTRL_OFFSET, r);

	out32(GTC_BASE + GTC_COMPARATOR_LO_OFFSET, (u32) (t & 0xFFFFFFFF));
	out32(GTC_BASE + GTC_COMPARATOR_HI_OFFSET, (u32) (t >> 32));

	r = in32(GTC_BASE + GTC_CTRL_OFFSET);
	r |= 1 << 1;
	out32(GTC_BASE + GTC_CTRL_OFFSET, r);
}

#endif /* GTC_A9MPCORE */
