#!/bin/bash

#CPUTYPE=`grep  "CPU_TYPE" ./.cfg|sed 's/^.*= *//g'`
#echo $CPUTYPE
PROJECT_CONFIG_FILE=.config
grep -v "^[[:blank:]]*#" $PROJECT_CONFIG_FILE | grep -v "^$" > ./.cfg

