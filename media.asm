.data
	mensagem: .asciiz "Insira um número: "
	mensagem2: .asciiz "Insira um segundo número: "
.text
	li $v0, 4
	la $a0, mensagem
	syscall 
	
	li $v0, 5
	syscall 
	
	move $t0, $v0 #primeiro número inserido está em t0
	
	li $v0, 4
	la $a0, mensagem2
	syscall 
	
	li $v0, 5
	syscall 
	
	move $t1, $v0 #segundo número inserido está em t1
	
	add $t2, $t0, $t1 #somando os dois números e guardando em t2
	
	li $t3, 2
	div $t2, $t3
	
	mflo $t4
	
	li $v0, 1
	move $a0, $t4
	syscall