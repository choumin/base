#!/bin/bash

function remove_extra_space()
{
	[ $# -lt 2 ] && echo "Usage: $0 src_file dst_file" && exit

	src_file=$1
	dst_file=$2
	tmp=./tmp
	cat $src_file |awk '{for(i=1;i<NF;++i){printf("%s ", $i)} printf("%s\n", $NF)}' > $tmp
	cp $tmp $dst_file
	rm $tmp
}

function add_header()
{
	[ $# -lt 2 ] && echo "Usage: $0 src_file dst_file" && exit

	src_file=$1
	dst_file=$2
	header=./header.txt
	tmp=./tmp
	cat $header > $tmp
	cat $src_file >> $tmp
	cp $tmp $dst_file
	rm $tmp
}

[ $# -lt 2 ] && echo "Usage: $0 src dst" && exit

src=$1
dst=$2

[ ! -d $src ] && echo "$src are not dir!" && exit
[ ! -d $dst ] && echo "$dst are not dir!" && exit

echo "src dir is: $src"
echo "dst dir is: $dst"

src_abs=$src
dst_abs=$dst

function deal_2layer_dir()
{
	for item in $(ls $src_abs)
	do
		src_item=$src_abs/$item
		echo $src_item
		if [ -d $src_item ]; then
			dst_item=$dst_abs/$item
			if [ ! -d $dst_item ]; then
				mkdir -p $dst_item
			fi

			for _item in $(ls $src_item)
			do
				src_file=$src_item/$_item
				dst_file=$dst_item/$_item
				echo "$src_file, $dst_file"
				add_header $src_file $dst_file
			done
		else
			cp $src_item $dst_abs/
		fi
	done
}

function deal_root_file()
{
	for item in $(ls $src_abs)
	do
		src_item=$src_abs/$item
		if [ -f $src_item ]; then
			dst_item=$dst_abs/$item
			echo "$src_item, $dst_item"
			remove_extra_space $src_item $dst_item
			add_header $dst_item $dst_item
		fi
	done
}

deal_root_file

