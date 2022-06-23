.data
vals: .space 4000
message1: .asciiz "Enter an integer: 9999 to exit \n"
message2: .asciiz "The array contains the following: \n"
next_line: .asciiz "\n"

.text
.globl main
main:

la $a1, vals # $a1 is the base address of the array
li $a2, 9 # $a2 = 9;

li $t0, 0 # i = 0;
li $t1,9999
loop:
# cout << message1 << endl;
la $a0, message1
li $v0, 4
syscall
li $v0, 5
syscall
beq $v0,$t1,sort
addi $t0,$t0,4
sw $v0, ($a1)
addi $a1, $a1, 4 # move the array over by 1 element
j loop

sort:

la $t4, vals #t0 is number up to outter loop
la $t1, vals #t1 is number comparing to inner loop
addi $t1,$t1,4
la $t8,vals
add $t8,$t0,$t8
la $t9,vals
add $t9,$t0,$t9
addi $t9,$t9,-4
loops: lw $t2,($t4) #get number 1 outter loop
lw $t3,($t1) #get number 2 inner loop
blt $t2,$t3,next #don't need to swap
sw $t3,($t4) #swap
sw $t2,($t1)
next: addi $t1,$t1,4
blt $t1,$t8,loops #inner loop done?
addi $t4,$t4,4 #yes-increment outter loop
move $t1,$t4
addi $t1,$t1,4
blt $t4,$t9,loops #outter loop done?

printArray:
la $a1,vals

la $a0, message2
li $v0, 4
syscall
loop1:
blez $t0, done
li $v0, 1
lw $a0, 0($a1)
syscall
la $a0, next_line
li $v0, 4
syscall
addi $a1, $a1, 4
addi $t0, $t0, -4
j loop1
done:
j done