.data
	.word 4
	.word 1, 2, 3, 4
.text
	lui s0, 0x10010
	lw t0, 0(s0) #length
ciclo:
	addi s0, s0, 4 #increasing the address by 4
	lw t1, (s0) #loading the first item in the list
	add a0, a0, t1
	addi t0, t0, -1
	bne t0, zero, ciclo
	addi a7, zero, 1
	ecall
	addi a7, zero, 10
	ecall