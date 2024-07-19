
.data
	.word -5
	.word 9
.text
	lui s0, 0x10010
	lw t0, 0(s0)
	lw t1, 4(s0)
	blt t1, t0, ciclo
	addi t2, t0, 0
	addi t0, t1, 0
	addi t1, t2, 0 
ciclo:
	addi a7, zero, 10
	ecall