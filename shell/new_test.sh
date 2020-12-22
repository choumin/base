#!/bin/sh

function add_main() {
	file="$1"
	[ -z "$file" ] && "echo add main failed!" && return
	
echo '''#include <stdio.h>

int main(void) {
	
	return 0;
}
'''> $file

}

function add_makefile() {
	file="$1"
	[ -z "$file" ] && "echo add Makefile failed!" && return 

echo '''all: main

main: main.c
	gcc $^ -o $@
	
.PHONY: clean

clean:
	rm main
	rm *.o
'''> $file

}

if [ $# -eq 0 ]; then
	if [ ! -f ./main.c ]; then
		add_main main.c
	fi	

	if [ ! -f ./Makefile ]; then
		add_makefile Makefile

	fi
else
	test_name=$1
	home=/home/zhoumin/github/choumin/base/C/src
	test_dir=$home/$test_name
	if [ -d $test_dir ]; then
		echo "$test_dir already exists!"
		exit -1
	fi

	mkdir $test_dir
	touch $test_dir/main.c
	add_main $test_dir/main.c
	add_makefile $test_dir/Makefile
	echo "you can enter $test_name by j $test_dir"
fi
