# BEGIN ASSIGNMENT TAGS
# CWID = 887449239
# NaMe = Vedant Kawale
# Assignment=Mips6WhileLoopCountdown
# END ASSIGNMENT TAGS

.data

newLine: .asciiz "\n"
.text
main:

#First Input
 	li $v0, 5
	syscall
	move $t0, $v0 
loop :	slt $t1,$zero,$t0 
	beq $t1,$zero,L1
	li $v0, 1
	move $a0,$t0
	syscall
	addi $t0,$t0,-1
#New Line
	li $v0, 4
	la $a0, newLine
	syscall
	j loop

L1 : 	nop
exit:
    	li $v0, 10             
    	syscall
