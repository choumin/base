#include <stdio.h>
#include <stdlib.h>

void test(void) {
	abort();
}

int main(void) {
	test();
	
	return 0;
}

