.data
	.word 5
	.word -1, 3, 6, 9, 5
.text
	lui s0, 0x10010
	lw t0, 0(s0) #load array len
	lw a0, 4(s0) #load the first array item as a maximum
	addi s0, s0, 4
	addi t0, t0, -1 #decrese the index as I have already used the first index
ciclo:
	addi s0, s0, 4 #add an offeset to the address to point to the next element
	lw t1, 0(s0)
	ble t1, a0, skip #if t1 is less than or equal a0 (max) skip, else update a0 (max)
	addi a0, t1, 0
skip:
	addi t0, t0, -1 #decrease the array len to keep track of the index
	bne t0, zero, ciclo
	addi a7, zero, 1
	ecall
	addi a7, zero, 10
	ecall
