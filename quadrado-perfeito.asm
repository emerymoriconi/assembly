.data
	mensagem: .asciiz "Insira um n�mero inteiro positivo: "
	eh_quadrado: .asciiz "O n�mero � quadrado perfeito. Sua raiz �: "
	nao_eh_quadrado: .asciiz "O n�mero n�o � quadrado perfeito."
.text
	li $v0, 4
	la $a0, mensagem
	syscall 
	
	li $v0, 5
	syscall 
	
	move $t0, $v0 #numero inserido
	
	li $t1, 1 #auxiliar
	li $t2, 0 #raiz
	
	teste: 
		blt $t0, $zero, naoeh
		beq $t0, $zero, eh
		
		sub $t0, $t0, $t1
		addi $t1, $t1, 2
	
		addi $t2, $t2, 1
		j teste
	naoeh:
		li $v0, 4
		la $a0, nao_eh_quadrado
		syscall 
		
		li $v0, 10
		syscall 
	eh:
		li $v0, 4
		la $a0, eh_quadrado
		syscall 
		
		li $v0, 1
		move $a0, $t2
		syscall 