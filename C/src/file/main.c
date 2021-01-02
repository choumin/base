#include <stdio.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <string.h>

void test(void) {
	char *str = "hello, world";
	int fd = open("a.txt", O_RDWR); 
	printf("fd from open: %d\n", fd);
	write(fd, str, strlen(str) + 1);
	printf("write %s by fd\n", str);

	char buf[128];
	FILE *fp = fdopen(fd, "rw");
	rewind(fp);
	int ret = fread(buf, 1, 128, fp);
	printf("read %s by fp, result: %d\n", buf, ret);
	
	int fd2 = fileno(fp);
	printf("fd from fileno: %d\n", fd2);

	close(fd);
}

int main(void) {
	test();
	
	return 0;
}

