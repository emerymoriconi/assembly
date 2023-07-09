.data
	mensagem: .asciiz "Insira um número: "
.text
	li  $v0, 4
	la $a0, mensagem
	syscall 
	
	li $v0, 5
	syscall
	
	move $t0, $v0 #numero esta em t0
	
	li $t1, 2 #j
	li $t3, 3 #i
	addi $t2, $t0, 1 #ate onde vai a iteração do i (teste inclui o numero digitado)

	li $s0, 0

while1:
	beq $t3, $t2, fim #testar se o i é igual ao numero inserido mais um pra ele acabar e printar a soma
	
while2:
	beq $t1, $t3, primo #testar se o j é igual ao numero i pra ele ir pro primo
	div $t3, $t1 # faz a divisao e se o resto for igual a 0 ent nao é primo e pula pra proximo
	mfhi $t9
	beq $t9, $zero, proximo
	addi $t1, $t1, 1 # j = j + 1
	j while2 
	
primo: 
	beq $t0, 2, fim #tira o 2
	add $s0, $s0, $t3 # soma = soma + i
	j proximo
	
proximo: 
	addi $t3, $t3, 1 #i=i+1
	li $t1, 2 # li j=2
	j while1 
	
fim:
	li  $v0, 1
	move $a0, $s0
	syscall
