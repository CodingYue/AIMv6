.global intp_table

intp_table:
    NOP // reset
    NOP // undefined 
    B SWI_handler
    NOP // prefetch abort
    NOP // data abort
    NOP // undefined
    B IRQ_handler
    NOP // FIQ

SWI_handler:
    STMFD SP, {R0-R14}  // store to SP - 4 to SP - 4 * 15, R14 to R0 respectively
    MRS R0, SPSR        
    STR R0, [SP, #-64]        // store SPSR to SP
    SUB R0, SP, #64         // pass SP to SWI_handler

    MOV R3, R14             // PC in user mode

    MRS R1, CPSR
    ORR R1, R1, #0x1F
    MSR CPSR, R1

    MOV R1, SP              // SP in user mode
    MOV R2, LR              // LR in user mode

    LDR SP, =#3758096380 // FIXME, TODO: USE MARCO. HERE CREATE A NEW KERN STACK
    MOV FP, SP
    B C_SVC_handler

IRQ_handler:
    SUB R14, R14, #4

    STMFD SP, {R0-R14}  // store to SP - 4 to SP - 4 * 15, R14 to R0 respectively
    MRS R0, SPSR        
    STR R0, [SP, #-64]        // store SPSR to SP
    SUB R0, SP, #64          // pass SP to SWI_handler

    MOV R3, R14             // PC in user mode

    MRS R1, CPSR
    ORR R1, R1, #0x1F
    MSR CPSR, R1

    MOV R1, SP              // SP in user mode
    MOV R2, LR              // LR in user mode

    LDR SP, =#3758096380 // FIXME, TODO: USE MARCO. HERE CREATE A NEW KERN STACK
    MOV FP, SP
    B C_IRQ_handler
