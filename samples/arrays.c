#include <stdlib.h>
#include <stdio.h>

/* Test for variable matching with arrays */
int main(int argc, char *argv[]) {
	int a[5] = {1, 2};
	int *b, *c;
	int x;

	/* Element access and assignment */
	a[2] = a[0] + a[1];

	/* Pointer addition */
	b = a + 2;

	/* Dereference */
	x = *b;

	/* Allocate new array */
	c = (int *) malloc( argc * sizeof(int) );

	/* Call printf to make variable need to exist */
	printf("%d, %d", x, c[0]);

	return a[3];
}