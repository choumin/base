#include <stdio.h>

#define A

void test1(void) {
#ifdef A
	printf("defined A when call %s()\n", __func__);
#endif
}
void test2(void) {
#undef A
#ifdef A
	printf("defined A when call %s()\n", __func__);
#endif

}

void test3(void) {
#ifdef B
	printf("defined B 1!\n");
#endif

#define B

#ifdef B
	printf("defined B 2!\n");
#endif

}

void test(void) {
	test3();
}

int main(void) {
	test();
	
	return 0;
}

