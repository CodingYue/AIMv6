.global interrupt_table

interrupt_table:
	nop //
	nop //
	b SVC_handler
	nop
	nop
	nop //
	b IRQ_handler //
	nop // FIQ

SVC_handler:
    STMFD SP!, {R0-R12, R14}
    BL C_SVC_handler
    LDMFD SP!, {R0-R12, PC}^

IRQ_handler:
    SUBS R14, R14, #4
	stmfd sp!, {r0-r12, R14}
	bl C_IRQ_handler
	ldmfd sp!, {r0-r12, pc}^
