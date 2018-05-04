        .data
number: .word 1, 2, 3, 4, 5, 6, 7, 8, 9, 10  # declare int array
space:  .asciiz " "                                  # declare space
        .text
        .globl main
main:
########## allocate int
        addi $sp,$sp,-4      # alloc int a
        addi $sp,$sp,-4      # alloc int b
########## call sub
        la $t0, number
        li $t1,9
        sw $t1, 12($t0)
########## number[5] = number[1] + number[2] ##########
        lw $t1, 4($t0)
        lw $t2, 8($t0) 
        add $t3, $t1, $t2
        sw $t3, 16($t0)
########## printf(%d %d",number[4], number[5]); ##########
        li $v0, 1          # syscall 1 (print_int)
        lw $a0, 12($t0) # argument: number[4]
        syscall            # print the integer
         li $v0, 4        # syscall 4 (print_string)
        la $a0, space # argument: string
        syscall          # print the string
        li $v0, 1       # syscall 1 (print_int)
        lw $a0, 16($t0) # argument: number[5]
        syscall         # print the integer
########## return 0; ##########
        li $v0, 0      # $set return value 0
        jr $ra          # retrun to caller

##########
sub:
        addi $sp,$sp,-4      # allocate int a
        addi $sp,$sp,-4      # allocate int b
