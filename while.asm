.data
	msg: .asciiz "Insira um valor inteiro: "

.text
	li $v0, 4
	la $a0, msg
	syscall 
	
	li $v0, 5
	syscall 
	
	move $t0, $v0 #valor digitado pela pessoa 
	
	move $t1, $zero #valor auxiliar a ser incrementado
	
	while: 
		bgt $t1, $t0, saida #testa se o auxiliar é maior que o valor do usuário para sair
		li $v0, 1 #comando de impressão de inteiro
		move $a0, $t1 #move o auxiliar para o $a0, para ele ser imprimido na tela
		syscall 
		
		addi $t1, $t1, 1 #incrementa o auxiliar
		j while
	saida:
		 li $v0, 10 #acabou o programa
		 syscall 
