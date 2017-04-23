#include <stdio.h>

/* Struct declaration, no variable declaration */
struct S {
	int a;
	int b;
};

/* Struct declaration with global variable declaration */
struct T {
	int a;
	int b;
} global_struct;

/* Struct variable declaration without type */
struct {
	int a;
	int b;
	int c;
} singleton_struct;

int main(int argc, char *argv[]) {
	struct S s1, s2;
	struct S *ps;

	/* Individual member access */
	s2.a = 0;
	s2.b = 0;

	/* Manipulating pointers and values */
	if (argc > 1) {
		ps = (struct S *) &global_struct;
	} else {
		s1 = s2;
		ps = &s2;
	}

	/* Print */
	printf("%p", (void *) ps);

	return 0;
}