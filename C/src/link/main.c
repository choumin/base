#include <stdio.h>
#include "a.h"

extern int a;
int main(void) {
	printf("hello world\n");
	int r1 = foo();
	printf("%d\n", r1);
	return 0;
} 
