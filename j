#!/bin/bash

# copy the following code into ~/.bashrc file.
function j {
    [ "$1" = "" ] && cd ~ && return

    dir=$1
    min=0
    target=""
    dir_list=`cat ~/.bash_history | sed -r 's/^\s+//g' |awk '/^cd/ {print $2}'`
    for _dir in $dir_list
    do
        # skip not exist dir. 
        if [ ! -d $_dir -a ! -d ~/$_dir ]; then
            continue
        fi

        # suffix precedent.
        if [[ $_dir == *$dir || $_dir == *$dir/ ]]; then
            if [ $min -eq 0 -o $min -gt ${#_dir} ]; then
                min=${#_dir}
                target=$_dir
            fi
        fi

    done

    # degrade handle. 
    if [ -z $target ]; then
        if [ -d $dir ]; then
            target=$dir
        elif [ -d ~/$dir ]; then
            target=~/$dir
        fi
    elif [ ! -d $target ]; then
        if [ -d ~/$target ]; then
            target=~/$target
        fi
    fi

    #echo $target

    if [ ! -z $target ]; then
        cd $target && return
    fi

    # hand over to shell.
    cd $dir
}

# test codes
j $@
