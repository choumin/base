#define _GNU_SOURCE
#include <sys/wait.h>
#include <sys/utsname.h>
#include <sched.h>
#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/time.h>

static double getFloatTime()
{
        struct timeval t;

        gettimeofday(&t, 0);
        return (double) t.tv_sec + (double) t.tv_usec / 1000000.0;
}

#undef VDSO
#ifdef VDSO
extern pid_t __vdso_getpid(void);
extern uid_t __vdso_getuid(void);
# define getpid __vdso_getpid
# define getuid __vdso_getuid
#endif

#define errExit(msg)    do { perror(msg); exit(EXIT_FAILURE); \
		       } while (0)

struct thread_info {
	int quota;
	int thread_flag;
	void (*thread_func)(struct thread_info *);
};

static int              /* Start function for cloned child */
childFunc(void *arg)
{
   struct utsname uts;

   /* Change hostname in UTS namespace of child */

   if (sethostname(arg, strlen(arg)) == -1)
       errExit("sethostname");

   /* Retrieve and display hostname */

   if (uname(&uts) == -1)
       errExit("uname");
   printf("uts.nodename in child:  %s\n", uts.nodename);

   /* Keep the namespace open for a while, by sleeping.
      This allows some experimentation--for example, another
      process might join the namespace. */

   sleep(200);

   return 0;           /* Child terminates now */
}

static int
child_process(void *arg)
{
    printf("%s: pid(%d), ppid(%d)\n", __func__, getpid(), getppid());

    return 0; 
}

#define STACK_SIZE (1024 * 1024)    /* Stack size for cloned child */

int
test2(void)
{
   char *stack;                    /* Start of stack buffer */
   char *stackTop;                 /* End of stack buffer */
   pid_t pid;
   struct utsname uts;

   /* Allocate stack for child */

   stack = malloc(STACK_SIZE);
   if (stack == NULL)
       errExit("malloc");
   stackTop = stack + STACK_SIZE;  /* Assume stack grows downward */

   /* Create child that has its own UTS namespace;
      child commences execution in childFunc() */

   pid = clone(child_process, stackTop, CLONE_NEWPID, NULL);
   if (pid == -1)
       errExit("clone");
   printf("clone() returned %ld\n", (long) pid);

   printf("%s: pid(%d), ppid(%d)\n", __func__, getpid(), getppid());

   /* Parent falls through to here */

   sleep(1);           /* Give child time to change its hostname */

   /* Display hostname in parent's UTS namespace. This will be
      different from hostname in child's UTS namespace. */

   if (uname(&uts) == -1)
       errExit("uname");
   printf("uts.nodename in parent: %s\n", uts.nodename);

   if (waitpid(pid, NULL, 0) == -1)    /* Wait for child */
       errExit("waitpid");
   printf("child has terminated\n");

   exit(EXIT_SUCCESS);
}

void show_pid(struct thread_info *info) {
    printf("%s: flag(%d), pid(%d), ppid(%d)\n", __func__, info->quota, getpid(), getppid());
}

void show_uid(struct thread_info *info) {
	printf("%s: flag(%d), uid(%d), gid(%d)\n", __func__, info->quota, getuid(), getgid());
}

int create_thread(void *arg) {
	pid_t pid = 0;
	char *stack = NULL, *stackTop = NULL;
	struct thread_info *tinfo = arg;
	struct thread_info *new_info = NULL;

	if (tinfo == NULL) {
		printf("thread info param cannot be empty!\n");
		return -1;
	}
	printf("+++++++++++++++++++++++++++++++++++++++++++++++++\n");

	tinfo->thread_func(tinfo);
	if (tinfo->quota <= 0) {
		printf("there is no quota for child!\n");
		return 0;
	}

	stack = (char *)malloc(STACK_SIZE);
	if (stack == NULL) {
			printf("alloc stack failed!\n");
			return -1;
	}
	stackTop = stack + STACK_SIZE;  /* Assume stack grows downward */

	new_info = (struct thread_info *)malloc(sizeof(struct thread_info));
	if (new_info == NULL) {
			printf("alloc thread_info struct failed!\n");
			return -1;
	}
	*new_info = *tinfo;
	new_info->quota--;

	pid = clone(create_thread, stackTop, new_info->thread_flag, (void *)new_info);
	printf("child pid is: %d\n", pid);

	sleep(10);

	waitpid(pid, NULL, 0);	

	printf("child has terminated\n");
	printf("+++++++++++++++++++++++++++++++++++++++++++++++++\n");

   	return 0;

}

void test3(void) {
	struct thread_info *info;

	info = (struct thread_info *)malloc(sizeof(struct thread_info));
	if (info == NULL) {
		return ;
	}
	
	info->quota = 3;
	info->thread_flag = CLONE_NEWUSER;
	info->thread_func = show_uid;
	create_thread(info);
}

void test_getpid(struct thread_info *info) {
	int NR_LOOP = 10000000, i = 0;
	pid_t pid;
	double start, end;
	
	start = getFloatTime();
       	for (i = 0; i < NR_LOOP; ++i) {
		pid = getpid();
	}
	pid = getpid();
	end = getFloatTime();

	printf("last test result (pid): %d\n", pid);	
	printf("%s time cost: %.4f, last result: %lld\n", "vdso", end - start, pid);
}

void test_getuid(struct thread_info *info) {
	int NR_LOOP = 10000000, i = 0;
	uid_t uid;
	double start, end;

	start = getFloatTime();
	for (i = 0; i < NR_LOOP; ++i) {
		uid = getuid();
	}
	uid = getuid();
	end = getFloatTime();

	printf("last test result (uid): %d\n", uid);
	printf("%s time cost: %.4f, last result: %lld\n", "vdso", end - start, uid);

}

void test4(void) {
	struct thread_info *info;

	info = (struct thread_info *)malloc(sizeof(struct thread_info));
	if (info == NULL) {
		return ;
	}
	
	info->quota = 5;
	info->thread_flag = CLONE_NEWPID; 
	info->thread_func = test_getuid;
	create_thread(info);
}

void test(void) {
	test4();
}

int main(void) {
	test();

	return 0;
}
