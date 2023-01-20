/*
 * File: loops.c
 * Description: Lots of loops to benchmark the branch predictor.
 */

#include "macros.h"

int main(void) {
    int i, j, k;
    int x = 0;
    int y = 0;
    for (i = 0; i < 5; i++) {
        for (j = 0; j < 5; j++)
            for (k = 0; k < 5; k++)
                if (x&1) // if odd
                    y++;
                x++;
    }
    return 0;
}
