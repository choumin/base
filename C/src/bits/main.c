#include <stdio.h>
#include <stdlib.h>

int main(int argc, char **argv) {
	if (argc < 2) {
		printf("Usage: %s num\n", argv[0]);
		return -1;
	}

	int num = atoi(argv[1]);
	printf("%d\n", num ^ num);

	return 0;
}
