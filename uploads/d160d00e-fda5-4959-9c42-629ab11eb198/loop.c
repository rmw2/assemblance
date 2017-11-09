int countdown(int n) {
	int i;

	for (i = 0; i < n; i++) {
		n--;
	}

	return n;
}

int main(int argc, char *argv[]) {
	int n = argc;

	countdown(n);
}

