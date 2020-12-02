all: test.o test dump

test.o: test.S
	gcc -save-temps -g -c -fno-builtin -mno-abicalls test.S 
	
test: ld.lds test.o
	ld -static -T ld.lds -o test test.o

dump: test.o test
	objdump -D test.o >test.o.dump
	objdump -D test > test.dump

