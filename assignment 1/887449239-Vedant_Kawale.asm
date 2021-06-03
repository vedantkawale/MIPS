# BEGIN ASSIGNMENT TAGS
# CWID = 887449239
# NaMe = Vedant Kawale
# Assignment = Assignment 1
# END ASSIGNMENT TAGS

.data
name: .asciiz "These MIPS assignments are going to be awesome! \n"
fl: .float 1.00
int: .word 1
newLine: .asciiz "\n"

.text
main:
	#print the string
	li $v0, 4
	la $a0, name
	syscall
	#print the float
	li $v0, 2
	lwc1 $f12, fl
	syscall
	#print the NEW line
	li $v0, 4
	la $a0, newLine
	syscall
	#print the Integer
	la $t0,1
	li $v0,1
	move $a0,$t0
	syscall
	nop
exit:
    	li $v0, 10             
    	syscall
