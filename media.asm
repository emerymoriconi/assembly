.data
	mensagem: .asciiz "Insira um n�mero: "
	mensagem2: .asciiz "Insira um segundo n�mero: "
.text
	li $v0, 4
	la $a0, mensagem
	syscall 
	
	li $v0, 5
	syscall 
	
	move $t0, $v0 #primeiro n�mero inserido est� em t0
	
	li $v0, 4
	la $a0, mensagem2
	syscall 
	
	li $v0, 5
	syscall 
	
	move $t1, $v0 #segundo n�mero inserido est� em t1
	
	add $t2, $t0, $t1 #somando os dois n�meros e guardando em t2
	
	li $t3, 2
	div $t2, $t3
	
	mflo $t4
	
	li $v0, 1
	move $a0, $t4
	syscall