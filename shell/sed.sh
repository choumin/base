#!/bin/bash

#CPUTYPE=`grep  "CPU_TYPE" ./.cfg|sed 's/^.*= *//g'`
#echo $CPUTYPE
function test1()
{
	PROJECT_CONFIG_FILE=.config
	grep -v "^[[:blank:]]*#" $PROJECT_CONFIG_FILE | grep -v "^$" > ./.cfg
}

function test2()
{
	tmp=./alltests
	cat > $tmp <<EOF
getpid
getuid
clock_gettime
gettimeofday
EOF
	test_name=getuid
	sed -i "/\<${test_name}\>/c\\${test_name} exit 32;" $tmp
	cat $tmp
	rm $tmp 
}

test2
