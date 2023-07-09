.data
	mensagem: .asciiz "Insira um primeiro n�mero: "
	mensagem_dois: .asciiz "Insira um segundo n�mero: "
.text
	li $v0, 4
	la $a0, mensagem
	syscall 
	
	li $v0, 5
	syscall 
	
	move $t0, $v0 #primeiro n�mero da multiplica��o
	
	li $v0, 4
	la $a0, mensagem_dois
	syscall 
	
	li $v0, 5
	syscall 
	
	move $t1, $v0 #segundo n�mero da multiplica��o
	
	li $t2, 1 #iterador
	
	beq $t0, $zero, zero #se algum dos operandos for zero, o resultado d� zero automaticamente
	beq $t1, $zero, zero #se algum dos operandos for zero, o resultado d� zero automaticamente
	
	addi $t3, $t0, 1 #limite da itera��o
	
	while:
		beq $t2, $t3, fim 
		add $s0, $s0, $t1 #guarda o valor das somas sucessivas
		addi $t2, $t2, 1 #incrementa o iterador
		j while
	fim:
		li $v0, 1
		move $a0, $s0
		syscall 
		
		li $v0, 10
		syscall 
	zero:
		li $v0, 1
		la $a0, 0
		syscall 
