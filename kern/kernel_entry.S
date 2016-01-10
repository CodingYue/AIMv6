.global kernel_entry


kernel_entry:
	mrs r0, CPSR
	orr r0, #0xF
	msr CPSR, r0 
	ldr fp, =0x1F00000
	mov sp, fp
	bl main