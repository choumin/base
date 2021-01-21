#include <stdio.h>

typedef void(*func)(void);

func __vdso_gettime;
void test(void) {
#if 0
	int a = 1;
	void *p = &a;
	void *q = p + 1;

	printf("%p, %p\n", p, q);
#endif
	void *p = NULL;
	(void) (p);
	__vdso_gettime = p;
}

int main(void) {
	test();

	return 0;
}



