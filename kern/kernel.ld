ENTRY(main)

MEMORY
{
	KERNEL (rwx) :
		ORIGIN = 6M,
		LENGTH = 400M
}



SECTIONS
{

	.high 0x80700000: AT(0x700000) {
		*high_exec.o
		*memory.o
		*uar.o
		*gtc-a9mpcore.o
		*sd-zynq7000.o
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
