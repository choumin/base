#include <stdio.h>

void test(void) {
	int a = 1;
	int b = 3;
	int d = 0;
	a += b & 0;
	printf("%d\n", a);
}

int main(void) {
	test();
	
	return 0;
}

