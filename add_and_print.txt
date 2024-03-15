#Created by Qusai Baker
.data
	.word 5
	.word -6
.text
	lui s0, 0x10010
	lw t0, 0(s0)
	lw t1, 4(s0)
	add a0, t0, t1
	addi a7, zero, 1
	ecall
	addi a7, zero, 10
	ecall
	