all: main

main: main.c
	gcc $^ -o $@ -lsqlite3
	
.PHONY: clean

clean:
	rm main
	rm *.o

