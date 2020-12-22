#include <stdio.h>

#define NR_MAX	5

void test(void) {
	int i = 0;
	int a[NR_MAX + 1] = {
		[0 ... NR_MAX] = i++,
	};

	for (i = 0; i < NR_MAX; ++i) {
		printf("%d ", a[i]);
	}
	printf("\n");
}

int main(void) {
	test();

	return 0;
}
