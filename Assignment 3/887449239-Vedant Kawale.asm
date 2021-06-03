# BEGIN ASSIGNMENT TAGS
# CWID = 887449239
# NaMe = Vedant Kawale
# Assignment=Mips3BitwiseShift
# END ASSIGNMENT TAGS

.data

newLine: .asciiz "\n"

.text
main:

#First Input
	li $v0, 5
	syscall
	move $t2, $v0 

#Second Input
	li $v0, 5
	syscall
	move $t1, $v0

#Shift left
	li $v0, 1
	move $t0,$t2
	sll $t0,$t0,$t1
	move $a0,$t0
	syscall


#New Line	
	li $v0, 4
	la $a0, newLine
	syscall
#Shift left by hard coded
	li $v0, 1
	move $t0,$t2
	sll $t0,$t0,1
	move $a0,$t0
	syscall	

	
#New Line	
	li $v0, 4
	la $a0, newLine
	syscall

#Right shift by second value
	li $v0, 1
	move $t0,$t2
	srl $t0,$t0,$t1
	move $a0,$t0
	syscall

	
#New Line	
	li $v0, 4
	la $a0, newLine
	syscall

#Right shift hard coded value 
	li $v0, 1
	move $t0,$t2
	srl $t0,$t0,1
	move $a0,$t0
	syscall
	

	nop
exit:
    	li $v0, 10             
    	syscall
