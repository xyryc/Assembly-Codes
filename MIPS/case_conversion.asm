.data
string: .asciiz "\nT\n"
newline: .asciiz "\n"

.text
main:
    la  $t0, string # $t0 is pointer to first el of str, loading string
    li  $v0, 4      # print the original string
    la  $a0, string
    syscall
    
    li $s2, ' '
    li $v0, 4
    li $t0, 0

loop:
    lb $t1, string($t0)
    beq $t1, 0, exit
    beq $t1, $s2, neither
    
    j caseLower
   
caseLower:
    blt $t1, 'A', caseUpper
    bgt $t1, 'Z', caseUpper
    addi $t1, $t1, 32
    sb $t1, string($t0)
    addi $t0, $t0, 1
    j loop
    
    
caseUpper:
    blt $t1, 'a', neither
    bgt $t1, 'z', neither
    addi $t0, $t0, -32 
    sb $t1, string($t0)
    addi $t0, $t0, 1
    j loop
    
neither:
    addi $t0, $t0, 1
    j loop
    
exit:
    li $t0, 4
    la $a0, string
    syscall

    li $v0, 10
    syscall