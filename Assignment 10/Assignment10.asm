
# BEGIN ASSIGNMENT TAGS
# CWID = 887449239
# NaMe = Vedant Kawale
# Assignment=Mips10Recursion
# END ASSIGNMENT TAGS

.data

newLine: .asciiz "\n"

.text
main:

#First Input
 	li $v0, 5
	syscall
	move $s1,$v0        #input s1
	addi $s2,$s2,0
	addi $s1,$s1,-1		#count s2
L2:	
	li $v0, 4			#New Line
	la $a0, newLine
	syscall
	#li $v0, 1
	move $a0, $s2
	#syscall
	jal Function		#call fibo function
	li $v0, 1
	move $a0, $s0
	syscall
	beq $s1,$s2,exit		
	addi $s2,$s2,1
	j L2				#loop


exit:
    	li $v0, 10             
    	syscall	

L4:	li $s0,0			#L4 :if x==0
	j retrieve
L5:	li $s0,1			#L4 :if x==1
	j retrieve

Function: 

	addi $sp,$sp, -12		# storing previous function in stack
	sw $ra,0($sp)
	sw $s3,4($sp)
	sw $s4,8($sp)

	li $t4,1
	move $s3,$a0
	beq $s3,$zero, L4			# check if x==0 or x==1 if yes then jump to L4 and L5
	beq $s3,$t4, L5
	addi $a0,$s3,-1				# F(X-1)
	jal Function				# F(X-1) loop
	move $s4,$s0				# s4=F(X-1)
	addi $a0,$s3,-2
	jal Function
	add $s0,$s0,$s4

retrieve: lw $ra,0($sp)			# retrieve previous function in stack
	lw $s3,4($sp)
	lw $s4,8($sp)
	addi $sp, $sp,12
	jr $ra

