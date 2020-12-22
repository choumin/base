#include <stdio.h>

#define NR_MAX	50000

void test(void) {
	int i = 0;
/*
	int a[NR_MAX + 1] = {
		[0 ... NR_MAX - 3] = i++,
	};
*/
	int a[NR_MAX];
	for (i = 0; i < NR_MAX; ++i) {
		if (a[i]) {
			printf("%d no!\n", i);	
			break;
		}
	}
	printf("yes!\n");
}

void test2(void) {
	int a[] = {[100] = 5};

	printf("sizeof a: %d\n", sizeof(a));
}

int main(void) {
	test2();

	return 0;
}
