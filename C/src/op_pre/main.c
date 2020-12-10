#include <stdio.h>

int main(void) {
	int a = 5;
	int b = 3;
	int c = 2;

	c -= a + b;

	printf("c: %d\n", c);
	return 0;
}
