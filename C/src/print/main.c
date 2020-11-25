#include <stdio.h>

int main(void) {
	printf(("abc: %s\n", "hello"));

	char *str = ("abc: %s\n", "hello");
	printf(str);

	return 0;
}
