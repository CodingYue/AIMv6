.global interrupt_table

interrupt_table:
	nop //
	nop //
	b SVC_handler
	b prefetch_abort_handler
	b data_abort_handler
	nop //
	b IRQ_handler
	nop // FIQ

SVC_handler:
	stmfd sp!, {r0-r12, lr}
	ldr r0, [lr, #-4]
 	bic r0, r0, #0xFF000000
 	mov r1, sp
 	bl C_SVC_handler
 	ldmfd sp!, {r0-r12, pc}^

prefetch_abort_handler:
	stmfd sp!, {r0-r12, lr}
 	bl C_prefetch_abort_handler
 	ldmfd sp!, {r0-r12, pc}^

data_abort_handler:
	stmfd sp!, {r0-r12, lr}
	bl C_data_abort_handler
	ldmfd sp!, {r0-r12, pc}^

IRQ_handler:
	stmfd sp!, {r0-r12, lr}
	bl C_IRQ_handler
	ldmfd sp!, {r0-r12, pc}^
