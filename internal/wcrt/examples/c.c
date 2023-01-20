/*
 * File: c.c
 * Description: Example of how to format a C file to be read by CVA6.
 */

#include "macros.h"

int f(int x, int y) {
    return x + y;
}

// entry point
void main(void) {
    int result = f(2022, 2023);
}
