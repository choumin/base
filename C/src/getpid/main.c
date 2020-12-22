#include <sys/types.h>
#include <sys/syscall.h>
#include <unistd.h>
#include <stdio.h>
#include <sys/time.h>
#include <sys/wait.h>

int test_getpid(void) {
	pid_t pid = getpid();
	int i = 0;

	printf("new process whose pid is: %d\n", pid);
	while (i < 10) {
		sleep(1);
		pid = getpid();
		printf("pid: %d\n", pid);
		++i;
	}

	return 0;
}

int test_syscall(void) {
	pid_t pid = syscall(SYS_getpid);
	int i = 0;

	printf("new process whose pid is: %d\n", pid);
	while (i < 10) {
		sleep(1);
		pid = syscall(SYS_getpid); 
		printf("pid: %d\n", pid);
		++i;
	}

	return 0;
}

int test_vdso_syscall(void) {
	struct timeval tv;
	struct timezone tz;
	int i = 0;

	gettimeofday(&tv, &tz);
	
	printf("tv.tv_sec: %d\n", tv.tv_sec);

	while (i < 10) {
		sleep(1);
		gettimeofday(&tv, &tz);
		printf("tv.tv_sec: %d\n", tv.tv_sec);
		++i;
	}

	return 0;
}

int test_bypass_fork(void) {
	pid_t pid = 0;
	int status = 0;
	
	printf("I'm parent process and my pid is: %d\n", getpid());
	pid = syscall(SYS_fork);
	if (pid > 0) {
		printf("I'm parent process and my child's pid is: %d\n", pid);
	} else if (pid == 0) {
		printf("I'm child porcess and my pid is: %d, my parent's pid is: %d\n", getpid(), getppid());
	}	
	waitpid(pid, &status, WUNTRACED | WCONTINUED);

	return 0;
}

int main(void) {

	//test_vdso_syscall();
	test_bypass_fork();

	return 0;
}
