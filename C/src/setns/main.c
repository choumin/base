#define _GNU_SOURCE
#include <fcntl.h>
#include <sched.h>
#include <unistd.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <signal.h>

#define errExit(msg)    do { perror(msg); exit(EXIT_FAILURE); \
		       } while (0)

#define STACK_SIZE (1024 * 1024)    /* Stack size for cloned child */

int sample(int argc, char *argv[]);
void test1(void);
pid_t create_thread_wrapper(int (*func)(void *), int flag, void *args);
void do_loop(void (*func)(void *), void *args, int latency);
void show_pid(void *args);
int show_pid_loop(void *args);
void show_uid(void *args);
int show_uid_loop(void *args);
pid_t create_normal_thread(int (*func)(void *), void *args);
void test2(void);

int sample(int argc, char *argv[])
{
   int fd;

   if (argc < 3) {
       fprintf(stderr, "%s /proc/PID/ns/FILE cmd args...\n", argv[0]);
       exit(EXIT_FAILURE);
   }

   fd = open(argv[1], O_RDONLY); /* Get file descriptor for namespace */
   if (fd == -1)
       errExit("open");

   if (setns(fd, 0) == -1)       /* Join that namespace */
       errExit("setns");

   execvp(argv[2], &argv[2]);    /* Execute a command in namespace */
   errExit("execvp");
}

char *get_pid_ns(int pid)
{
	char bytes[32];
	
	sprintf(bytes, "/proc/%d/ns/pid", pid);
	return strdup(bytes);
}

char *get_cur_pid_ns(void)
{
	return get_pid_ns(getpid());
}

void test1(void)
{
	int fd;
	char *ns_file;
	int ns_flag = CLONE_NEWPID;
	int child_pid;

	printf("My pid is: %d\n", getpid());	

	ns_file = get_cur_pid_ns();
	if (!ns_file) {
		printf("error: get namespace file failed!\n");
		return ;
	}
	
	fd = open(ns_file, O_RDONLY);
       	if (fd == -1) {
		printf("error: open namespace file failed!\n");
		return ;
	}

	if (setns(fd, ns_flag) == -1) {
		printf("error: setns failed!\n");
		return ;
	}

	if ((child_pid = create_normal_thread(show_pid_loop, NULL)) == -1) {
		printf("create child thread failed!\n");
		goto kill_child;
	}
	printf("My child pid is: %d\n", child_pid);

	sleep(3);
kill_child:
	kill(child_pid, SIGTERM);
	waitpid(child_pid, NULL, 0);
}

pid_t create_thread_wrapper(int (*func)(void *), int flag, void *args)
{
	char *stack, *stackTop;

	stack = (char *)malloc(STACK_SIZE);
	if (stack == NULL) {
			printf("alloc stack failed!\n");
			return -1;
	}
	stackTop = stack + STACK_SIZE;  /* Assume stack grows downward */

	return clone(func, stackTop, flag, args);
}

void do_loop(void (*func)(void *), void *args, int latency)
{
	for (;;) {
		func(args);
		sleep(latency);
	}		
}

void show_pid(void *args)
{
	printf("pid is: %d\n", getpid());
}

int show_pid_loop(void *args)
{
	do_loop(show_pid, args, 1);
	return 0;
}

void show_uid(void *args)
{
	printf("uid is: %d\n", getuid());
}

int show_uid_loop(void *args)
{
	do_loop(show_uid, args, 1);
	return 0;
}

pid_t create_normal_thread(int (*func)(void *), void *args)
{
	return create_thread_wrapper(func, 0, args);
}

pid_t create_thread_with_flag(int (*func)(void *), int flag, void *args)
{
	return create_thread_wrapper(func, flag, args);
}

void test2(void)
{
	int fd;
	char *ns_file;
	int ns_flag = CLONE_NEWPID;
	pid_t child_pid;

	printf("My pid is: %d\n", getpid());	
	if ((child_pid = create_normal_thread(show_uid_loop, NULL)) == -1) {
		printf("create child thread failed!\n");
		goto kill_child;
	}
	printf("My child pid is: %d\n", child_pid);
	
	ns_file = get_pid_ns(child_pid);
	if (!ns_file) {
		printf("get child pid ns failed!\n");
		goto kill_child;
	}

	fd = open(ns_file, O_RDONLY);
	if (fd == -1) {
		printf("open child pid ns failed!\n");
		goto kill_child;
	}

	if (setns(fd, ns_flag) == -1) {
		printf("set child ns failed!\n");
		goto kill_child;
	}

	sleep(3);
kill_child:
	kill(child_pid, SIGTERM);
	waitpid(child_pid, NULL, 0);
}

int idle(void *args)
{
	printf("I'm idle process, pid is: %d\n", getpid());
	for (;;) {
		sleep(1);
	}

	return 0;
}

void test3(void)
{
	pid_t child_pid;
	char *ns_file;
	int fd;

	printf("my pid is: %d\n", getpid());
	child_pid = create_thread_with_flag(idle, CLONE_NEWPID, NULL);
        if (child_pid == -1) {
		printf("error: create child thread failed!\n");
		return ;
	}
	printf("child pid is: %d\n", child_pid);

	ns_file = get_pid_ns(child_pid);
	if (!ns_file) {
		printf("get child pid ns failed!\n");
		goto kill_child;
	}

	fd = open(ns_file, O_RDONLY);
	if (fd == -1) {
		printf("open child pid ns failed!\n");
		goto kill_child;
	}

	if (setns(fd, 0) == -1) {
		printf("set ns failed!\n");
		goto kill_child;
	}

	if (0 && execl("/home/zhoumin/test/setns/pid", "pid", NULL) == -1) {
		printf("exec failed!\n");
		perror("");
		goto kill_child;
	}
	child_pid = create_normal_thread(show_pid_loop, NULL);
	printf("another pid is: %d\n", child_pid);
	sleep(3);

kill_child:
	kill(child_pid, SIGTERM);
	waitpid(child_pid, NULL, 0);
}

void test(void) {
	test3();	
}

int main(void) {
	test();

	return 0;
}
