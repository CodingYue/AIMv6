/*
 * Copyright (C) 2015 David Gao <davidgao1001@gmail.com>
 *
 * This program is free software; you can redistribute  it and/or modify it
 * under  the terms of  the GNU General  Public License as published by the
 * Free Software Foundation;  either version 2 of the  License, or (at your
 * option) any later version.
 *
 */

#include <sleep.h>
#include <asm/io.h>
#include <drivers/serial/uart.h>
#include <drivers/sd/sd-zynq7000.h>
#include <drivers/misc/dtb-zynq7000.h>

void puthex(u32 num)
{
    int i;
    const char table[] = "0123456789ABCDEF";
    char buf[11] = "00000000\r\n";
    for (i = 28; i >= 0; i -= 4){
        buf[(28 - i) >> 2] = table[(num >> i) & 0xF];
    }
    uart_spin_puts(buf);
}
u32 readbytes(volatile u8 *addr, u32 bytesz)
{
	u32 res = 0;
	for (u32 i = 0; i < bytesz; ++i) {

		res += (u32) addr[i] << (i*8);
	}
//	puthex(res);
	return res;
}
void memcpy(volatile u8* addr, u32 sz, volatile u8* off)
{
	for (u32 i = 0; i < sz; ++i) {
		addr[i] = off[i];
	}
}
int my_dma_read(u32 pa, u32 sz, u32 offset)
{
	/*
	 *	Avoid cross-page interrupt.
	 *	pa: phisical address
	 *	sz: the nubmer of bytes
	 *	offset: sector offset.
	 *	page size: 4096 bytes
	 *	sector size: 512 bytes.
	 *	1 page = 8 sectors
	*/
	u32 count = (sz >> 9) + ((sz & 0x1FF) != 0);
	u32 remain = 8-(offset & 0x7);

	uart_spin_puts("COUNT = ");
	puthex(count);

	if (count <= remain) {
		return sd_dma_spin_read(pa, count, offset);
	} else {
		int ret = sd_dma_spin_read(pa, remain, offset);
		if (ret != 0) {
			return ret;
		}
		pa += remain << 9;
		count -= remain;
		offset += remain;
	}
	while (count > 0) {
		int ret = sd_dma_spin_read(pa, 8, offset);
		if (ret != 0) return ret;
		count -= 8;
		offset += 8;
		pa += 4096; 
	}
	return 0;
}
void mbr_bootmain(void)
{
	#define PT_LOAD 1
	volatile u8 *mbr = (u8 *) 0x100000;
	u32 LBA = readbytes(mbr+0x1d6, 4);


	volatile u8 *pbase = (u8 *) 0x100200;

	//sd_init();

	/* Initialize SD card */
	//ret = sd_spin_init_mem_card();

	my_dma_read(0x100200, 1, LBA);
	u32 e_entry = readbytes(pbase+0x18, 4);
	u32 e_phoff = readbytes(pbase+0x1C, 4);
	u32 e_shoff = readbytes(pbase+0x20, 4);
	u32 e_phentsize = readbytes(pbase+0x2A, 2);
	u32 e_phnum = readbytes(pbase+0x2C, 2);
	//u32 e_shentsize = readbytes(pbase+0x2E, 2);
	//u32 e_shnum = readbytes(pbase+0x30, 2);

	volatile u8 *p_shoff = pbase + e_phoff;

	puthex(e_entry);
	puthex((u32) p_shoff);
	puthex(e_phentsize);
	puthex(e_phnum);

	my_dma_read(0x100200, e_phnum * e_phentsize + e_phoff, LBA);

	for (u32 i = 0; i < e_phnum; ++i) {

		u32 p_type = readbytes(p_shoff, 4);
		//puthex(p_type);
		u32 p_offset = readbytes(p_shoff+0x4, 4);
		//puthex(p_offset);
		//u32 p_vaddr = readbytes(p_shoff+0x8, 4);
		u32 p_paddr = readbytes(p_shoff+0xC, 4);
		u32 p_filesz = readbytes(p_shoff+0x10, 4);
		//u32 p_memsz = readbytes(p_shoff+0x14, 4);
		//u32 p_flags = readbytes(p_shoff+0x18, 4);
		//u32 p_align = readbytes(p_shoff+0x1C, 4);

		uart_spin_puts("\r\nBEGIN\r\n");

		puthex(p_type);
		puthex(p_offset);
		puthex(p_paddr);
		puthex(p_filesz);

		if (p_type == PT_LOAD) {
			my_dma_read(p_paddr, p_filesz, LBA+(p_offset>>9));
		}

		p_shoff += e_phentsize;
	}

	int (*main)(void) = (int*) e_entry;
	main();

spin:
	while (1);
}


void firmware_bootmain(void)
{
	int ret;
	volatile u8 *mbr = (void *)0x100000; /* THIS IS NOT A NULL! */
	void (*mbr_entry)() = (void *)mbr;

	/* Wait for UART fifo to flush */
	sleep(1);

	/* Initialize and enable UART */
	uart_init();
	uart_enable();
	uart_spin_puts("FW: Hello!\r\n");

	/* Initialize SDHCI interface */
	sd_init();
	uart_spin_puts("FW: SD Controller initialized.\r\n");

	/* Initialize SD card */
	ret = sd_spin_init_mem_card();
	if (ret == 0) uart_spin_puts("FW: SD Card initialized.\r\n");
	else if (ret == 1) uart_spin_puts("FW: SDHC Card initialized.\r\n");
	else {
		uart_spin_puts("FW: Card initialization failed.\r\n");
		goto spin;
	}

	/*
	 * We don't turn on SCU now. The kernel should do this.
	 * This CANNOT be done here. DDR in 0x0 to 0xFFFFF is only accessible
	 * to processor cores, not the DMA controller.
	 * See Xilinx UG585, Table 4-1 for details.
	 */

	/* Read MBR */
	ret = my_dma_read((u32)mbr, 1, 0);
	if (ret == 0) uart_spin_puts("FW: Card read OK.\r\n");
	else {
		uart_spin_puts("FW: Card read failed.\r\n");
		goto spin;
	}
	
	/* Check MBR */
	if (mbr[510] == 0x55 && mbr[511] == 0xAA) {
		uart_spin_puts("FW: MBR valid.\r\n");
		mbr_entry();
	} else uart_spin_puts("FW: MBR not valid.\r\n");
	
spin:
	while (1);
}

