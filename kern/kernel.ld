ENTRY(main)

MEMORY
{
	KERNEL (rwx) :
		ORIGIN = 2M,
		LENGTH = 400M
}



SECTIONS
{

	.high 0x80300000: AT(0x300000) {
		*high_exec.o
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
	.low : {
		*low_exec.o
	}
}		
