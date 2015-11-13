ENTRY(main)

MEMORY
{
	kernel (rwx) :
		ORIGIN = 20M,
		LENGTH = 400M
}

SECTIONS
{
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
