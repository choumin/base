#include <stdio.h>
#include <string.h>

void test(void) {
	char *str1 = "hello world, from stdout\n";
	write(2, str1, strlen(str1));

	int fd = dup(2);
	if (fd < 0) {
			printf("dup stdout failed!\n");
			return ;
	}
	char *str2 = "hello world, from dup stdout\n";
	write(2, str2, strlen(str2)); 
}

int main(void) {
	test();
	
	return 0;
}

