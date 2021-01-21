#include <stdio.h>
#include <time.h>

void test(void) {
	struct timespec ts;
	clock_gettime(CLOCK_MONOTONIC, &ts);
}

int main(void) {
	int num = 10000000;
	int i = 0;
	for (i = 0; i < num; ++i) {
		test();
	}
	
	return 0;
}

