# BEGIN ASSIGNMENT TAGS
# CWID = 887449239
# NaMe = Vedant Kawale
# Assignment=Mips2MathAndLogic
# END ASSIGNMENT TAGS

.data

newLine: .asciiz "\n"

.text
main:
#First Input
	li $v0, 5
	syscall
	move $t0, $v0 

#Second Input
	li $v0, 5
	syscall
	move $t1, $v0
#New Line
	li $v0, 4
	la $a0, newLine
	syscall
#Addition
	li $v0, 1
	add $a0,$t0,$t1
	syscall
#New Line	
	li $v0, 4
	la $a0, newLine
	syscall
#Subtraction
	li $v0, 1
	sub $a0,$t0,$t1
	syscall

#New Line	
	li $v0, 4
	la $a0, newLine
	syscall

#OR
	li $v0, 1
	or $a0,$t0,$t1
	syscall
#New Line
	li $v0, 4
	la $a0, newLine
	syscall
#And
	li $v0, 1
	and $a0,$t0,$t1
	syscall 
 

	nop
exit:
    	li $v0, 10             
    	syscall