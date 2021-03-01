#include <stdio.h>

#define max(a, b) ((a) > (b) ? (a) : (b))
#define maxint(a, b) \
	({int _a = (a), _b = (b); _a > _b ? _a : _b;})

#define maxint3(a, b, c) \
  ({int _a = (a), _b = (b), _c = (c); maxint (maxint (_a, _b), _c); })

void test(void) {
	int _a = 1, _b = 2, _d = 4, c;

	c = max(_a, _b);
	printf("max: %d\n", c);

	c = maxint(_a, _b);
	printf("max: %d\n", c);

	c = maxint3(_a, _b, _d);
	printf("max: %d\n", c);
}

void test2(void)
{
	int a = 1, b = 2, d = 4, c;
	c = maxint3(a, b, d);
	printf("max: %d\n", c);
}

void test3(void)
{
	int a = 1, b = 2, c;

	c = maxint(a++, b++);
	printf("max: %d\n", c);
}

int main(void) {
	test3();
	
	return 0;
}
