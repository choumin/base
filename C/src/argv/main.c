#include <stdio.h>

void test(void) {

}

int main(int argc, char *argv[]) {
	int i = 0;
	printf("argc is: %d\n", argc);
	for (i = 0; i < argc; ++i) {
		printf("%s\n", argv[i]);
	}
	test();
	
	return 0;
}

