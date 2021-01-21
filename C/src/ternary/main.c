#include <stdio.h>

void test(void) {
	int a = 0;
	int b = ++a ? ++a : -1;
	printf("%d, %d\n", a, b);
}

int main(void) {
	test();
	
	return 0;
}

