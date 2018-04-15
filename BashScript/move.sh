#!/usr/bin/env bash


dirname1="/usr/src/linux-headers-4.13.0-38"
dirname2="/usr/include/c++/linux-headers-4.13.0-38-generic/"
dirname3=""
diraim="/work/rrrr"


function dfs(){
   for file in $(ls ${1})
    do
        file=${1}/${file}
        if [ -d  ${file} ]
        then
            dfs ${file}
        elif [ -f ${file} ]
        then
            name=${file##*.}
            if [ ${name} == "h" ]
            then
                cp ${file}  ${diraim}/
            fi
        fi

    done





}



main(){
    dfs ${dirname1}
    dfs ${dirname2}




}
main