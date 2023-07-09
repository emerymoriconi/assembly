.data
	mensagem: .asciiz "Digite um valor inteiro: "
	maior: .asciiz "O n�mero � maior que zero. "
	menor: .asciiz "O n�mero � menor que zero. "
	igual: .asciiz "O n�mero � igual a zero. "
.text
	li $v0, 4 #imprime a mensagem para o usu�rio
	la $a0, mensagem
	syscall 
	
	li $v0, 5 #l� o n�mero inteiro
	syscall 
	
	beq $v0, $zero, imprimeIgual #testa se � igual
	blt $v0, $zero, imprimeMenor #testa se � menor
	li $v0, 4 #vem pra c� somente se � maior que zero
	la $a0, maior
	syscall 
	
	li $v0, 10 #termina o programa
	syscall 
	
	imprimeIgual: 
		li $v0, 4
		la $a0, igual
		syscall 
	
	li $v0, 10 #termina o programa
	syscall
	
	imprimeMenor: 
		li $v0, 4
		la $a0, menor
		syscall  
	
