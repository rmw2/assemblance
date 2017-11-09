/* test register variables */
int main(int argc, char **argv) {
	register int a,b;
	int c = 0, d = 1;

	b = argc;

	for (a = 0; a < b; a++, b--) {
		if (c % b)
			b++;

		d = a*b;
		c += d;
	}

	return a;
}