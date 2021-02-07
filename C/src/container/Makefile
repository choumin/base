all: main

main: main.c
	#gcc $^ -o $@ -DVDSO -L. -lvdso
	gcc $^ -o $@ -DVDSO -L.
	
.PHONY: clean

clean:
	rm -f main
	rm -f *.o

