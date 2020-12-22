#include <stdio.h>
#include <unistd.h>
#include <sys/wait.h>
#include <sys/syscall.h>

int test_bypass_fork(void) {
	pid_t pid = 0;
	int status = 0;
	
	printf("I'm parent process and my pid is: %d\n", getpid());
	pid = syscall(SYS_fork);
	if (pid > 0) {
		printf("I'm parent process and my child's pid is: %d\n", pid);
	} else if (pid == 0) {
		printf("I'm child porcess and my pid is: %d\n", getpid());
	}	
	waitpid(pid, &status, WUNTRACED | WCONTINUED);

	return 0;
}

int main(void) {
	test_bypass_fork();

	return 0;
}
