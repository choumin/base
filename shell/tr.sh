#!/bin/bash


str="a	b	 c	d	  e						  		f	g	"
echo $str |tr [:blank:] ' '
