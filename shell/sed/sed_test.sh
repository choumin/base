#!/bin/bash


function test1()
{
	file=a.txt
	ret=`sed 's/#.*$//
/^[	 ]*$/d' $file`
	echo "$ret" |
while read a b c rest; do
	echo $rest;
done
}

function main()
{
	test1
}

main
