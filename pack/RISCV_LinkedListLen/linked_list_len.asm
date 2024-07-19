.data
	lista: .word n1
	n1: .word 1, n2
	n2: .word 2, n3
	n3: .word 3, n4
	n4: .word 5, n5
	n5: .word -5, 0
.text
	lui s0, 0x10010
	lw t0, lista #load the address of the first item in the list
ciclo:
	addi a0, a0, 1
	addi t0, t0, 4
	lw t0, (t0)
	bne t0, zero, ciclo
	addi a7, zero, 1
	ecall
	addi a7, zero, 10
	ecall