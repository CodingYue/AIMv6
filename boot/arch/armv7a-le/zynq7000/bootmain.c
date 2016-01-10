/*
 * Copyright (C) 2015 David Gao <davidgao1001@gmail.com>
 *
 * This program is free software; you can redistribute  it and/or modify it
 * under  the terms of  the GNU General  Public License as published by the
 * Free Software Foundation;  either version 2 of the  License, or (at your
 * option) any later version.
 *
 */

#define ELF32
#include <config.h>
#include <elf.h>
#define PRELOAD_VECTOR_BASE	0x1ff00000

void (*uart_spin_puts)(char *) = (void *) PRELOAD_VECTOR_BASE+0xC;
void (*sd_dma_spin_read)(u32, u16, u32) = (void *) PRELOAD_VECTOR_BASE+0x10;

u32 readbytes(volatile u8 *addr, u32 bytesz)
{
	u32 res = 0;
	for (u32 i = 0; i < bytesz; ++i) {

		res += (u32) addr[i] << (i*8);
	}
	return res;
}
#define size2count(x) (((x)>>9) + (((x) & 0x1ff) > 0))
void mbr_bootmain(void)
{
	uart_spin_puts("\r\nMBR Bootload begins!!!\r\n");
	volatile u8 *mbr = (u8 *) 0x100000;
	u32 LBA = readbytes(mbr+0x1d6, 4);
	volatile u8 *pbase = (u8 *) 0x100200;
	volatile elfhdr_t *elfhdr = (elf32hdr_t*) pbase;
	sd_dma_spin_read((u32) pbase, 1, LBA);
	
	sd_dma_spin_read(0x100400, size2count(elfhdr->e_phoff + elfhdr->e_phentsize * elfhdr->e_phnum), LBA);

	for (u32 i = 0; i < elfhdr->e_phnum; ++i) {

		volatile elf_phdr_t *proghdr = (elf_phdr_t*) (0x100400 + elfhdr->e_phoff + i * elfhdr->e_phentsize);
		if (proghdr->p_type == PT_LOAD) {
			sd_dma_spin_read(proghdr->p_paddr, size2count(proghdr->p_filesz), LBA+(proghdr->p_offset>>9));
		}
	}

	uart_spin_puts("Bootload Finished, Good Luck!\r\n");

	int (*kernel_entry)(void) = (int*) elfhdr->e_entry;
	kernel_entry();

spin:
	while (1);
}
