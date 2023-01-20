/*
 * File: asm.S
 * Description: Example of how to format a RISC-V assembly file to be read by CVA6.
 */

        .text
# Text segment
        .globl main;
main:

        li      t0, 2022;
        li      t1, 2023;
        add     t2, t0, t1;
        ret

        .data
# Data segment

arr: .asciz "Hello, world!"
