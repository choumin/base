all: main

main: main.c
	gcc -g $^ -o $@ -L. -lvdso
	
.PHONY: clean

clean:
	rm main
	rm *.o

