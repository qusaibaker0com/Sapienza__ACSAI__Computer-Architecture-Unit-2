.data
    .word 5
    .word 5

.text
    lui s0, 0x10010
    lw t0, 0(s0)
    lw t1, 4(s0)
    addi a0, zero, 1
    beq t0, t1, salta
    addi a0, zero, 0
salta:    li a7, 1
    ecall
    li a7, 10
    ecall