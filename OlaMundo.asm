.data
	#�rea para dados na mem�ria principal 
	msg: .asciiz "Ol�, mundo!" #mensagem a ser exibida para o usu�rio

.text
	#�rea para instru��es do programa
	
	li $v0, 4 #instru��o para impress�o de string
	la $a0, msg #indicar o endere�o em que est� a mensagem 
	syscall #fa�a! Imprima (s� consegue acessar o que est� no registrador a0)