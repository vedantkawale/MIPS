# BEGIN ASSIGNMENT TAGS
# CWID = 887449239
# NaMe = Vedant Kawale
# Assignment=Mips8DynamicLowercase
# END ASSIGNMENT TAGS

.data
inputword : .space 1024
newLine: .asciiz "\n"
name: .asciiz "HELLO, I am cool !"
.text
main:
	 
	la $a0, inputword
	li $a1, 1025
	li $v0, 8
	syscall
	li $s1,91
	li $s2,64
	la $s0,inputword
loop:	lb $a0,0($s0)
	beqz $a0,L1
	slt $t1,$s1,$a0 
	beq $t1,1,L2
	slt $t1,$s2,$a0 
	beq $t1,$zero,L2
	move $t2, $a0
	addi $t2,$t2,32
	sb $t2, 0($s0)
L2 :	addi $s0,$s0,1
	j loop
L1 : 	li $v0,4
	la $a0, inputword
	syscall


nop
exit:
    	li $v0, 10             
    	syscall