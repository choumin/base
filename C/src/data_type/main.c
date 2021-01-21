#include <stdio.h>
#include <stdint.h>

void test(void) {
	int32_t data = 0xfffffc7c;
	printf("%d\n", data);
}

int main(void) {
	test();
	
	return 0;
}

