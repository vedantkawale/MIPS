# BEGIN ASSIGNMENT TAGS
# CWID = 887449239
# NaMe = Vedant Kawale
# Assignment=Mips4IntegerToDouble
# END ASSIGNMENT TAGS

.data

newLine: .asciiz "\n"
doubleValue: .double 1.3
.text
main:

#First Input
	li $v0, 7
	syscall
	ldc1 $f2, doubleValue
        #cvt.d.w $f2, $f2
	li $v0, 3
	mul.d $f12, $f0, $f2	
	syscall


	nop
exit:
    	li $v0, 10             
    	syscall
