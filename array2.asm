.data
	meuArray:
		.align 2 #valores inteiros
		.space 40 #alocando espaço de memória para 10 palavras
.text
	move $t0, $zero #controla o indice do vetor
	li $t1, 40 #sao 10 valores a serem inseridos pelo usuário
	
	leitura:
		beq $t0, $t1, fimDaLeitura
		li $v0, 5 #lendo valores inseridos pelo usuário
		
		syscall 
		
		sw $v0, meuArray($t0) #transferindo de um registrador para a memória
		
		addi $t0, $t0, 4 #atualizando o index do array
		j leitura
		
	fimDaLeitura:
	
	move $t0, $zero #reinicializa o contador
	lw $t2, meuArray($t0)
	move $t3, $t2 #t3 guarda o maior valor da sequencia
	addi $t0, $t0, 4
	
	comparacao:
		beq $t0, $t1, fimDaComparacao
		lw $t2, meuArray($t0)
		bgt $t2, $t3, novoMaior
		addi $t0, $t0, 4
		j comparacao
	novoMaior:
		move $t3, $t2
		addi $t0, $t0, 4
		j comparacao
	
	fimDaComparacao:
		li $v0, 1
		move $a0, $t3
		syscall
		 
		
	