# BEGIN ASSIGNMENT TAGS
# CWID = 887449239
# NaMe = Vedant Kawale
# Assignment=Mips5Branching
# END ASSIGNMENT TAGS

.data

newLine: .asciiz "\n"
# doubleValue: .double 1.3
.text
main:

#First Input
loop : 	li $v0, 5
	syscall
	move $t0, $v0 
	beq $t0, $zero, L1
	li $v0, 1
	move $a0,$t0
	syscall
#New Line
	li $v0, 4
	la $a0, newLine
	syscall
	j loop

L1 : 	nop
exit:
    	li $v0, 10             
    	syscall
