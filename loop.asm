.data
    .word 8

.text
    lui s0, 0x10010
    lw a0, 0(s0)
ciclo:  
    addi a7, zero, 1
    ecall
    addi a0, a0, -1
    bne a0, zero, ciclo
    li a7, 10
    ecall