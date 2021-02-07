#include <stdio.h>
#include <stdlib.h>
#include <signal.h>
#include <unistd.h>
#include <wait.h>

void tst_free_all(void)                                                                                                
{                                                                                                                      
        char *str = "hello, world";                                                                                    
                                                                                                                       
        printf("child(%d) process is exit...\n", getpid());                                                            
                                                                                                                       
}                             

void handler(int sig) {
 	printf("receive a sig, pid: %d, sig: %d\n", getpid(), sig);
}

#define dead_loop()	for(;;)

void test2(void) {
	int ret, status;

	pid_t pid = fork();
	if (pid == 0) {
		//ret = atexit(tst_free_all);
		//signal(SIGTERM, handler);
		//pause();
		//printf("%s\n", NULL);
		dead_loop();
		return ;

	} else if (pid > 0) {
		kill(pid, SIGQUIT);
		wait(&status);
	}
}

void test3(void) {
	dead_loop();
}

void test(void) {
	test3();
}

int main(void) {
	test();
	
	return 0;
}

