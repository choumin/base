all: main

send_file.o: send_file_xdr.c
	gcc -o $@ -c $^
main: main.c send_file.o
	gcc -g $^ -o $@
	
.PHONY: clean

clean:
	rm -f main
	rm -f *.o

