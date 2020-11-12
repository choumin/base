#include <stdio.h>

int foo(int a) {
	if (a == 5) {
		return a * a;
	} 
}
int main(void) {
	int b = foo(6);

	printf("%d\n", b);

	return 0;
}
