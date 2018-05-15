## data section
                .data
var_char:       .byte '1'
var_short:      .half 2 
var_int:        .word 4
## text section
                .text
                .globl main
main:
## printf("%c\n", var_char);
                li $v0, 11              # syscall 11 (print_character)
                lw $a0, var_char        # $a0 = var_char
                syscall                 # issue syscall 11
                li $v0, 11              # syscall 11 (print_char)
                li $a0, '\n'            # $a0 = '\n'
                syscall                 # issue syscall 11
## printf("%d\n", var_short);
                li $v0, 1               # syscall 1 (print_s)
                li $a0, 0               # $a0 = 0
                lh $a0, var_short       # $a0 = var_short
                syscall                 # issue syscall 1
                li $v0, 11              # syscall 11 (print_char)
                li $a0, '\n'            # $a0 = '\n'
                syscall                 # issue syscall 11
## printf("%d\n", var_int);
                li $v0, 1               # syscall 1 (print_int)
                lw $a0, var_int         # $a0 = var_int
                syscall                 # print the integer
                li $v0, 11              # syscall 11 (print_char)
                li $a0, '\n'            # $a0 = '\n'
                syscall                 # issue syscall 11
## return 0;
                li $v0, 0               # $set return value 0
                jr $ra                  # retrun to caller

