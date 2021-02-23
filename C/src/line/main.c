#include <stdio.h>

void print_pos(void)
{
	printf("--%s:%d--\n", __FILE__, __LINE__);
}

void test(void) {
	//print_pos();
	
	printf("--%s:%d--\n", __FILE__, __LINE__);
#line 200 "abc.c"

	printf("--%s:%d--\n", __FILE__, __LINE__);
	//print_pos();
#line 100 "abc.c"

	printf("--%s:%d--\n", __FILE__, __LINE__);
}

int main(void) {
	test();
	
	return 0;
}

