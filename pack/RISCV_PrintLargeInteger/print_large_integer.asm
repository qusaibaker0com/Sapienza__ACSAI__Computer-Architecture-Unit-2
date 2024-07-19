.data
	.word 5
	.word 7
.text
	lui s0, 0x10010
	lw a0, 0(s0)
	lw t0, 4(s0)
	blt t0, a0, step
	addi a0, t0, 0
step:
	addi a7, zero, 1
	ecall
	addi a7, zero, 10
	ecall
	