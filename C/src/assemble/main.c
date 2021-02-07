#include <stdio.h>

void test(void) {
	static int foo = 5;
}

int main(void) {
	test();
	
	return 0;
}

