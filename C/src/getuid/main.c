#include <stdio.h>
#include <sys/types.h>
#include <unistd.h>

void test2(void) {
	uid_t uid = getuid();
	printf("uid: %d\n", uid);
}
void test(void) {
	test2();	
}

int main(void) {
	test();
	
	return 0;
}

