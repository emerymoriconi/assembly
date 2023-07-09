.data
	idade: .word 56 #valor inteiro na memória RAM
.text
	li $v0, 1
	lw $a0, idade
	syscall 
	
	
