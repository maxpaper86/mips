## data section
                .data
var_char:       .byte 0
var_short:      .half 0 
var_int:        .word 0
## text section
                .text
                .globl main
main:
## var_char = '1'
                li $t0, '1'             # $t0 = '1'
                sb $t0, var_char        # var_char = $t0
## printf("%c\n", var_char);
                li $v0, 11              # syscall 11 (print_character)
                xor $a0, $a0, $a0       # $a0 = 0
                lb $a0, var_char        # $a0 = var_char
                syscall                 # issue syscall 11
                li $v0, 11              # syscall 11 (print_char)
                li $a0, '\n'            # $a0 = '\n'
                syscall                 # issue syscall 11
## var_short = 2
                li $t0, 2               # $t0 = 2
                sh $t0, var_short       # var_short = $t0
## printf("%d\n", var_short);
                li $v0, 1               # syscall 1 (print_int)
                xor $a0, $a0, $a0       # $a0 = 0
                lh $a0, var_short       # $a0 = var_short
                syscall                 # issue syscall 1
                li $v0, 11              # syscall 11 (print_char)
                li $a0, '\n'            # $a0 = '\n'
                syscall                 # issue syscall 11
## var_int = 4
                li $t0, 4               # $t0 = 4
                sw $t0, var_int         # var_int = $t0
## printf("%d\n", var_int);
                li $v0, 1               # syscall 1 (print_int)
                xor $a0, $a0, $a0       # $a0 = 0
                lw $a0, var_int         # $a0 = var_int
                syscall                 # print the integer
                li $v0, 11              # syscall 11 (print_char)
                li $a0, '\n'            # $a0 = '\n'
                syscall                 # issue syscall 11
## return 0;
                li $v0, 0               # $set return value 0
                jr $ra                  # retrun to caller

