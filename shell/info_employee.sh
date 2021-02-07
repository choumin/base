#!/bin/sh

[ -z "$1" ] && echo "Usage: $0 name" && exit -1

file=employee.dat

name=$1
email=-
job=-

eval `cat $file |sed -n -e "/^$name[ ]*\([0-9a-z@.]*\)[ ]*\(.*\)/s//email='\1';job='\2'/p"`

echo "user: $name"
echo "email: $email"
echo "job: $job"
