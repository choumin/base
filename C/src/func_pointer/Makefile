all: main

handler.o: handler.c
	gcc -g -c $^ -o $@

main: main.c handler.o
	gcc -g $^ -o $@
	
.PHONY: clean

clean:
	rm -f main
	rm -f *.o
