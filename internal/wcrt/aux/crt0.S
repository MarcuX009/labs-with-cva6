/*
 * File: crt0.S
 * Description: Entry point of programs.
 * Inspired by riscv-tests/benchmarks/common/crt.S: https://github.com/riscv-software-src/riscv-tests/blob/0796441a53050f2dd92f7dbad47dfbe5a103d53d/benchmarks/common/crt.S
 */


        .section ".text.init"
        .globl _start
_start:
        li  x1, 0
        li  x2, 0
        li  x3, 0
        li  x4, 0
        li  x5, 0
        li  x6, 0
        li  x7, 0
        li  x8, 0
        li  x9, 0
        li  x10,0
        li  x11,0
        li  x12,0
        li  x13,0
        li  x14,0
        li  x15,0
        li  x16,0
        li  x17,0
        li  x18,0
        li  x19,0
        li  x20,0
        li  x21,0
        li  x22,0
        li  x23,0
        li  x24,0
        li  x25,0
        li  x26,0
        li  x27,0
        li  x28,0
        li  x29,0
        li  x30,0
        li  x31,0

        .option push
        .option norelax
        la gp, __global_pointer$
        .option pop

        # give each core 128KB of stack + TLS
        #define STKSHIFT 17
        add sp, a0, 1
        sll sp, sp, STKSHIFT
        add sp, sp, tp
        sll a2, a0, STKSHIFT
        add tp, tp, a2

        call main

        li a7, 93 # set syscall to `exit`
        ecall;

        .section ".tohost","aw",@progbits
        .globl tohost
        .globl fromhost

        .align 6
tohost: .dword 0
        .align 6
fromhost: .dword 0
