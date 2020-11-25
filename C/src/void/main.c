#include <stdio.h>

int main(void) {
	int a = 1;
	void *p = &a;
	void *q = p + 1;

	printf("%p, %p\n", p, q);

	return 0;
}



