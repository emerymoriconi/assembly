.data
	#área para dados na memória principal 
	msg: .asciiz "Olá, mundo!" #mensagem a ser exibida para o usuário

.text
	#área para instruções do programa
	
	li $v0, 4 #instrução para impressão de string
	la $a0, msg #indicar o endereço em que está a mensagem 
	syscall #faça! Imprima (só consegue acessar o que está no registrador a0)