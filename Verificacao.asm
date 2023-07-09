.data
	mensagem: .asciiz "Digite um valor inteiro: "
	maior: .asciiz "O número é maior que zero. "
	menor: .asciiz "O número é menor que zero. "
	igual: .asciiz "O número é igual a zero. "
.text
	li $v0, 4 #imprime a mensagem para o usuário
	la $a0, mensagem
	syscall 
	
	li $v0, 5 #lê o número inteiro
	syscall 
	
	beq $v0, $zero, imprimeIgual #testa se é igual
	blt $v0, $zero, imprimeMenor #testa se é menor
	li $v0, 4 #vem pra cá somente se é maior que zero
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
	
