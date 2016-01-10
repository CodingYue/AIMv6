ENTRY(kernel_entry)

MEMORY
{
	KERNEL (rwx) :
		ORIGIN = 6M,
		LENGTH = 400M
}



SECTIONS
{
	.high 0x80700000: AT(0x700000) {
		*interrupt_asm.o
		*dtb-zynq7000.o
		*high_exec.o
		*memory.o
		*uart.o
		*gtc-a9mpcore.o
		*sd-zynq7000.o
		*uart-zynq7000.o
		*interrupt.o
	}

	.low : {
		*low_exec.elf
	}
	.text : {
		*(.text .rodata)
	}
	.data : {
		*(.data)
	}
	.bss : {
		*(.bss)
	}
}		
