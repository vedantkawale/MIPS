# BEGIN ASSIGNMENT TAGS
# CWID = 887449239
# NaMe = Vedant Kawale
# Assignment = Mips1Awesome
# END ASSIGNMENT TAGS

.data
name: .asciiz "These MIPS assignments are going to be awesome!"
fl: .double 1.10
int: .word 1
newLine: .asciiz "\n"

.text
main:
	li $v0, 4
	la $a0, name
	syscall

	li $v0, 4
	la $a0, newLine
	syscall

	la $t0,1
	li $v0,1
	move $a0,$t0
	syscall

	li $v0, 4
	la $a0, newLine
	syscall

	li $v0, 3
	ldc1 $f12, fl
	syscall
	nop
exit:
    	li $v0, 10             
    	syscall