.data
	meuArray:
		.align 2
		.space 16 #aloca 4 espaços no array
.text
	move $t0, $zero #indice do array
	move $t1, $zero #valor a ser colocado no array
	li $t2, 16 #tamanho do array 
	
	loop:
		beq $t0, $t2, saiDoLoop
		sw $t1, meuArray($t0)
		addi $t0, $t0, 4
		addi $t1, $t1, 1
		j loop
		
	saiDoLoop:
	
		move $t0, $zero #volta o contador para percorrer o array desde o início
		
		imprime:
			beq $t0, $t2, saiDaImpressao
			li $v0, 1
			lw $a0, meuArray($t0) #move da memória RAM para um registrador da CPU
			syscall 
			
			addi $t0, $t0, 4
			j imprime
			
		saiDaImpressao:
		
			