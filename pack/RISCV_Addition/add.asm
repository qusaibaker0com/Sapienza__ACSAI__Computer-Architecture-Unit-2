.data # By default starts at address 0x10010000

    .word 17
    .word 25
   
.text # By default starts at address 0x00400000

    lui x5, 0x10010
    lw x3, 0(x5)
    lw x4, 4(x5)
    add x3, x3, x4
    sw x3, 8(x5)
    ori x17, x0, 10
    ecall