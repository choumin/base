#include <unistd.h>
#include <stdio.h>
#include <string.h>

int main(void) {
	char *passwd = getpass("please input password: ");
	printf("you input: %s, len: %d\n", passwd, strlen(passwd));

	return 0;
}
