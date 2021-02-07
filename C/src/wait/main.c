#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>

void test(void) {
	int status, ret;
	pid_t pid = fork();
	if (pid > 0) {
		ret = wait(&status);
		printf("%d, ret: %d, status: %d\n", getpid(), ret, status);
	} else if (pid == 0) {
		ret = wait(&status);
		printf("%d, ret: %d, status: %d\n", getpid(), ret, status);
	} else {
		printf("fork() failed!\n");
	}
}

int main(void) {
	test();
	
	return 0;
}

