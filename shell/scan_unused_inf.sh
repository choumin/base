#!/bin/bash

function get_lib_inf_relation() {
  [ -z "$1" ] && return
  out_file=$1
  dsc_file=ArmVirt.dsc
  # find such line in dsc file:
  # PcdLib     | MdePkg/Library/BasePcdLibNull/BasePcdLibNull.inf 
  cat $dsc_file  |grep ".inf"$ |sed 's/[[:space:]]//g'| awk -F '|' '{if (NF==2) {print $1, $2}}' > $out_file
}

function get_fdf_inf() {
  [ -z "$1" ] && return
  out_file=$1
  fdf_file=ArmVirt.fdf
  # find such line in fdf file:
  # INF  MdeModulePkg/Universal/Console/ConPlatformDxe/ConPlatformDxe.inf 
  cat $fdf_file | grep "^INF.*.inf" |awk '{print $2}' |sort -u > $out_file
}

function get_defined_inf() {
  find ./ -iname "*.inf" | grep -v 3000
}

function get_used_inf() {
	[ -z "$1" ] && return
	f=$1
	in_lc=0
	while read line
	do
		if [[ "$line" = "[LibraryClasses"* ]]; then
			in_lc=1
			continue
		elif [[ "$line" = "["* ]]; then
			in_lc=0
			continue
		fi

		if [ $in_lc	-eq 1 -a ${#line} -gt 0 ]; then
			echo $line
		fi 
	
	done < $f
}

function get_inf_by_lib() {
	[ -z "$1" -o -z "$2" ] && echo "params invalid" && return
	lib_inf_file=$1
	lib=$2
	
	while read line
	do 
		_lib=${line% *}
		_inf=${line#* }
		if [ $_lib = $lib ]; then
			echo $_inf && return
		fi	
	done < $lib_inf_file

	echo "not found" && return
}

function main() {
  lib_inf_file=./zm_tmp1
  fdf_inf_file=./zm_tmp2
  used_inf_file=./zm_tmp3
  tmp_file=./zm_tmp4
  
  get_lib_inf_relation $lib_inf_file
  get_fdf_inf $fdf_inf_file
  truncate -s 0 $used_inf_file 

  inf_files=`get_defined_inf`
  for inf in $inf_files
  do
		libs=`get_used_inf $inf`
		for lib in $libs
		do
			_inf=`get_inf_by_lib $lib_inf_file $lib`
			if [ ! -z "$_inf" ]; then
				echo $_inf >> $used_inf_file
			fi
		done
  done

  cat $used_inf_file |sort -u > $tmp_file
  diff $tmp_file $fdf_inf_file
}

main
