.data
	String1:.asciiz "OVERFLOW! "
	String2:.asciiz "complete number: "
	String3:.asciiz "  "
	String4:.asciiz "---------------------------------------------------------------"
	String5:.asciiz " "
	String6:.asciiz "The total is "
.globl main
.text
complete_num:
sw $k0 0($sp)
sw $k1 4($sp)
sw $t4 8($sp)
sw $t5 12($sp)
sw $t6 16($sp)
sw $t7 20($sp)
sw $t8 24($sp)
sw $t9 28($sp)
addiu $sp $sp 32
sw $fp 4($sp)
move $fp $sp
sw $ra 0($fp)
addiu $sp $fp 8
addiu $sp $sp 4136
move $k0 $sp
move $k1 $0 
addiu $sp $sp 4
addiu $k1 $0 7
addiu $t0 $fp 4108
li $t1 2
sw $t1 0($t0)
Label1:
li $t1 1024
move $t4 $t1
addiu $t1 $fp 4108
lw $t1 0($t1)
move $t2 $t4
subu $t1 $t1 $t2
move $t5 $t1
move $a1 $t5
bgez $a1 Label2
addiu $t0 $fp 4112
li $t1 -1
sw $t1 0($t0)
addiu $t0 $fp 4116
addiu $t1 $fp 4108
lw $t1 0($t1)
sw $t1 0($t0)
addiu $t0 $fp 4104
li $t1 1
sw $t1 0($t0)
Label3:
addiu $t1 $fp 4104
lw $t1 0($t1)
addiu $t2 $fp 4108
lw $t2 0($t2)
subu $t1 $t1 $t2
move $t4 $t1
move $a1 $t4
bgez $a1 Label4
addiu $t1 $fp 4108
lw $t1 0($t1)
addiu $t2 $fp 4104
lw $t2 0($t2)
div $t1 $t2
mflo $t1
move $t4 $t1
move $t1 $t4
move $t5 $t1
move $t1 $t5
addiu $t2 $fp 4104
lw $t2 0($t2)
mult $t1 $t2
mflo $t1
move $t6 $t1
move $t1 $t6
move $t7 $t1
addiu $t0 $fp 4120
move $t1 $t7
sw $t1 0($t0)
addiu $t1 $fp 4120
lw $t1 0($t1)
addiu $t2 $fp 4108
lw $t2 0($t2)
subu $t1 $t1 $t2
move $t8 $t1
move $a1 $t8
bne $a1 $0 Label5
addiu $t1 $fp 4112
lw $t1 0($t1)
li $t2 1
addu $t1 $t1 $t2
move $t4 $t1
move $t1 $t4
move $t5 $t1
addiu $t0 $fp 4112
move $t1 $t5
sw $t1 0($t0)
addiu $t1 $fp 4116
lw $t1 0($t1)
addiu $t2 $fp 4104
lw $t2 0($t2)
subu $t1 $t1 $t2
move $t6 $t1
move $t1 $t6
move $t7 $t1
addiu $t0 $fp 4116
move $t1 $t7
sw $t1 0($t0)
li $t1 1024
move $t8 $t1
addiu $t1 $fp 4112
lw $t1 0($t1)
move $t2 $t8
subu $t1 $t1 $t2
move $t9 $t1
move $a1 $t9
bltz $a1 Label7
la $a0 String1
li $v0 4
syscall
li $a0 10
li $v0 11
syscall
j Label8
Label7:
addiu $t0 $fp 8
addiu $t1 $fp 4112
lw $t1 0($t1)
li $t2 4
mult $t1 $t2
mflo $t1
addu $t0 $t0 $t1
addiu $t1 $fp 4104
lw $t1 0($t1)
sw $t1 0($t0)
Label8:
j Label6
Label5:
Label6:
addiu $t1 $fp 4104
lw $t1 0($t1)
li $t2 1
addu $t1 $t1 $t2
move $t4 $t1
move $t1 $t4
move $t5 $t1
addiu $t0 $fp 4104
move $t1 $t5
sw $t1 0($t0)
j Label3
Label4:
li $t1 0
move $t6 $t1
addiu $t1 $fp 4116
lw $t1 0($t1)
move $t2 $t6
subu $t1 $t1 $t2
move $t7 $t1
move $a1 $t7
bne $a1 $0 Label9
la $a0 String2
li $v0 4
syscall
addiu $a0 $fp 4108
lw $a0 0($a0)
li $v0 1
syscall
li $a0 10
li $v0 11
syscall
addiu $t0 $fp 4104
li $t1 0
sw $t1 0($t0)
Label11:
addiu $t1 $fp 4104
lw $t1 0($t1)
addiu $t2 $fp 4112
lw $t2 0($t2)
subu $t1 $t1 $t2
move $t4 $t1
move $a1 $t4
bgtz $a1 Label12
la $a0 String3
li $v0 4
syscall
addiu $t1 $fp 8
addiu $t2 $fp 4104
lw $t2 0($t2)
li $t3 4
mult $t2 $t3
mflo $t2
addu $t1 $t1 $t2
lw $t1 0($t1)
move $t4 $t1
move $a0 $t4
li $v0 1
syscall
li $a0 10
li $v0 11
syscall
addiu $t1 $fp 4104
lw $t1 0($t1)
li $t2 1
addu $t1 $t1 $t2
move $t4 $t1
move $t1 $t4
move $t5 $t1
addiu $t0 $fp 4104
move $t1 $t5
sw $t1 0($t0)
j Label11
Label12:
la $a0 String3
li $v0 4
syscall
li $a0 10
li $v0 11
syscall
j Label10
Label9:
Label10:
addiu $t1 $fp 4108
lw $t1 0($t1)
li $t2 1
addu $t1 $t1 $t2
move $t4 $t1
move $t1 $t4
move $t5 $t1
addiu $t0 $fp 4108
move $t1 $t5
sw $t1 0($t0)
j Label1
Label2:
la $a0 String4
li $v0 4
syscall
li $a0 10
li $v0 11
syscall
addiu $t0 $fp 4132
li $t1 0
sw $t1 0($t0)
addiu $t0 $fp 4136
li $t1 1
sw $t1 0($t0)
addiu $t0 $fp 4124
li $t1 2
sw $t1 0($t0)
Label13:
li $t1 1024
move $t6 $t1
addiu $t1 $fp 4124
lw $t1 0($t1)
move $t2 $t6
subu $t1 $t1 $t2
move $t7 $t1
move $a1 $t7
bgtz $a1 Label14
addiu $t1 $fp 4124
lw $t1 0($t1)
li $t2 1
subu $t1 $t1 $t2
move $t4 $t1
move $t1 $t4
move $t5 $t1
addiu $t0 $fp 4128
move $t1 $t5
sw $t1 0($t0)
addiu $t0 $fp 4104
li $t1 2
sw $t1 0($t0)
Label15:
addiu $t1 $fp 4104
lw $t1 0($t1)
addiu $t2 $fp 4128
lw $t2 0($t2)
subu $t1 $t1 $t2
move $t6 $t1
move $a1 $t6
bgtz $a1 Label16
addiu $t1 $fp 4124
lw $t1 0($t1)
addiu $t2 $fp 4104
lw $t2 0($t2)
div $t1 $t2
mflo $t1
move $t4 $t1
move $t1 $t4
move $t5 $t1
move $t1 $t5
addiu $t2 $fp 4104
lw $t2 0($t2)
mult $t1 $t2
mflo $t1
move $t6 $t1
move $t1 $t6
move $t7 $t1
addiu $t0 $fp 4140
move $t1 $t7
sw $t1 0($t0)
addiu $t1 $fp 4140
lw $t1 0($t1)
addiu $t2 $fp 4124
lw $t2 0($t2)
subu $t1 $t1 $t2
move $t8 $t1
move $a1 $t8
bne $a1 $0 Label17
addiu $t0 $fp 4136
li $t1 0
sw $t1 0($t0)
j Label18
Label17:
Label18:
addiu $t1 $fp 4104
lw $t1 0($t1)
li $t2 1
addu $t1 $t1 $t2
move $t4 $t1
move $t1 $t4
move $t5 $t1
addiu $t0 $fp 4104
move $t1 $t5
sw $t1 0($t0)
j Label15
Label16:
li $t1 1
move $t6 $t1
addiu $t1 $fp 4136
lw $t1 0($t1)
move $t2 $t6
subu $t1 $t1 $t2
move $t7 $t1
move $a1 $t7
bne $a1 $0 Label19
la $a0 String5
li $v0 4
syscall
addiu $a0 $fp 4124
lw $a0 0($a0)
li $v0 1
syscall
li $a0 10
li $v0 11
syscall
addiu $t1 $fp 4132
lw $t1 0($t1)
li $t2 1
addu $t1 $t1 $t2
move $t4 $t1
move $t1 $t4
move $t5 $t1
addiu $t0 $fp 4132
move $t1 $t5
sw $t1 0($t0)
addiu $t1 $fp 4132
lw $t1 0($t1)
li $t2 10
div $t1 $t2
mflo $t1
move $t6 $t1
move $t1 $t6
move $t7 $t1
move $t1 $t7
li $t2 10
mult $t1 $t2
mflo $t1
move $t8 $t1
move $t1 $t8
move $t9 $t1
addiu $t0 $fp 4140
move $t1 $t9
sw $t1 0($t0)
move $t0 $k0
addiu $t0 $t0 0
addiu $t1 $fp 4140
lw $t1 0($t1)
addiu $t2 $fp 4132
lw $t2 0($t2)
subu $t1 $t1 $t2
sw $t1 0($t0)
move $a1 $k0
addiu $a1 $a1 0
lw $a1 0($a1)
bne $a1 $0 Label21
la $a0 String3
li $v0 4
syscall
li $a0 10
li $v0 11
syscall
j Label22
Label21:
Label22:
j Label20
Label19:
Label20:
addiu $t0 $fp 4136
li $t1 1
sw $t1 0($t0)
addiu $t1 $fp 4124
lw $t1 0($t1)
li $t2 1
addu $t1 $t1 $t2
move $t4 $t1
move $t1 $t4
move $t5 $t1
addiu $t0 $fp 4124
move $t1 $t5
sw $t1 0($t0)
j Label13
Label14:
la $a0 String6
li $v0 4
syscall
addiu $a0 $fp 4132
lw $a0 0($a0)
li $v0 1
syscall
li $a0 10
li $v0 11
syscall
move $sp $fp
lw $t9 -4($sp)
lw $t8 -8($sp)
lw $t7 -12($sp)
lw $t6 -16($sp)
lw $t5 -20($sp)
lw $t4 -24($sp)
lw $k1 -28($sp)
lw $k0 -32($sp)
addiu $sp $sp -32
lw $ra 0($fp)
lw $fp 4($fp)
jr $ra
main:
li $fp 268501212
addiu $sp $fp 8
addiu $sp $sp 0
move $k0 $sp
move $k1 $0 
jal complete_num
#accomplish generate mips code.
