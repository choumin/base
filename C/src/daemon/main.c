#include <stdio.h>
#include <unistd.h>
#include <stdbool.h>
#include <stdlib.h>
#include <signal.h>

void parent_exit(int num) {
	printf("parent pid(%d) is exit...\n", getpid());
	exit(0);
}

void child_exit(int num) {
	printf("child pid(%d) is exit...\n", getpid());
	exit(0);
}

void test(void) {
	daemon(1, 1);
	signal(SIGTERM, parent_exit);
	pid_t pid;

	pid = fork();
	if (pid > 0) {
		while (true) {
			printf("I'm parent process(%d) ...\n", getpid());
			sleep(1);
		}
	} else if (pid == 0) {
		while (true) {
			signal(SIGTERM, child_exit);
			printf("I'm child process(%d) ...\n", getpid());
			sleep(1);
		}
	} else {
		printf("create child process failed!\n");
	}
	exit(0);
}

int main(void) {
	test();
	
	return 0;
}

