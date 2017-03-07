/* void.c */

void a(int *s) {
	*s = 1;
}

int main() {
	int b;

	a(&b);

	return 0;
}