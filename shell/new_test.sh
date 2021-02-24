#!/bin/sh

repo_base=/home/zhoumin/github/choumin/base
src_dir=C/src

function add_main() {
	file="$1"
	[ -z "$file" ] && "echo add main failed!" && return
	
	cat > $file <<EOF
#include <stdio.h>

void test(void) {

}

int main(void) {
	test();
	
	return 0;
}
EOF
}

function add_makefile() {
	file="$1"
	[ -z "$file" ] && "echo add Makefile failed!" && return 

	cat > $file <<EOF
all: main

main: main.c
	gcc $^ -o $@
	
.PHONY: clean

clean:
	rm -f main
	rm -f *.o
EOF
}

function add_to_ignore() {
	file="$1"
	[ -z "$file" ] && return

	ignore=$repo_base/.gitignore
	[ ! -f $ignore ] && return

	ret=`grep $file $ignore`
	[ ! -z "$ret" ] && return

	echo $file >> $ignore
}

if [ $# -eq 0 ]; then
	if [ ! -f main.c ]; then
		add_main main.c
	fi	

	if [ ! -f Makefile ]; then
		add_makefile Makefile

	fi
	_tmp=`pwd`
	test_name=`basename $_tmp`
	add_to_ignore $src_dir/$test_name/main

else
	test_name=$1
	test_dir=$repo_base/$src_dir/$test_name
	if [ -d $test_dir ]; then
		echo "$test_dir already exists!"
		exit -1
	fi

	mkdir $test_dir
	touch $test_dir/main.c
	add_main $test_dir/main.c
	add_makefile $test_dir/Makefile
	add_to_ignore $src_dir/$test_name/main
	echo "you can enter $test_name by:"
	echo "j $test_dir"
fi
