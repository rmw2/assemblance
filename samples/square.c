#include <stdio.h>

// Type your code here, or load an example.
int square(int num) {
    return num * num;
}

int callSquare(int times) {
    int i;
    for (i = 0; i < times; i++) {
        printf("The square of %d is %d", i, square(i));
    }

    return square(i);
}