.data
	.word 2025 #current year - offset: 0
	.asciz "?) To see your age, Please enter your birth year(YYYY): " #input prompt - offset: 4 , len: 56 + 1
	.asciz ">>> Your Estimated Age(in years) is " #output msg - offset: 61 , len: 36 + 1
	#.asciz "\n* Thanks for being born to calculate your age using my program." #if age > 0 - offset:98 , len: 64 + 1
	#.asciz "\n* Welcome to Earth! You will be born this year my friend." #if age = 0 - offset:163 , len: 58 + 1
	#.asciz "\n* I appreciate your visit to us from the future to use my program." #if age < 0 - offset:222 , len: 67 + 1
.text
	lui x8, 0x10010
	#Load current year
	lw x11, 0(x8)
	#Print input prompt
	addi x10, x8, 4
	addi x17, x0, 4
	ecall
	#Read input
	addi x17, x0, 5
	ecall
	#Calculate age
	sub x12, x11, x10
	#Print output msg
	addi x10, x8, 61
	addi x17, x0, 4
	ecall
	#Print age
	addi x10, x12, 0
	addi x17, x0, 1
	ecall
	#Write the code to print an output msg according to the value of age (if 0, positive, or negative)
	#According to HW, we can't use labels, and unfortunately, this can't be done in RARS without labels
	#End Program
	addi x17, x0, 10
	ecall
