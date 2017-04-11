#include <stdio.h>

typedef char* MyNewType;

int main(int argc, char* argv[]) {
	MyNewType specialVar = (MyNewType) argv[0];
	char *regularVar = argv[0];

	printf("%s", regularVar);
	printf("%s", (char *)specialVar);

	return 0;
}