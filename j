#!/bin/bash

# copy the following code into ~/.bashrc file.
function j {
	[ "$1" = "" ] && exit

	dir=$1
	min=0
	target=""
	dir_list=`cat ~/.bash_history | sed -r 's/^\s+//g' |awk '/^cd/ {print $2}'`
	for _dir in $dir_list
	do
		if [ ! -d $_dir ]; then
			continue
		fi

		if [[ $_dir == *$dir* ]]; then
			if [ $min -eq 0 -o $min -gt ${#_dir} ]; then
				min=${#_dir}
				target=$_dir
			fi
		fi
			
	done

	if [ $min -gt 0 ]; then
		cd $target
	fi
}

