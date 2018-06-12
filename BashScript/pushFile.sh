#!/usr/bin/env bash
#BaseDir="/home/ffbh/CLionProjects/acm"
BaseDir=$(dirname $(dirname $(readlink -f ${0})))


OJ="codeforce"

if [ $# -ge 1 ];then
	OJ=$1
fi


path=/work/code/${OJ}/${OJ}/code/

echo ${path}


mv ${BaseDir}/CodeAccept/*  ${path}

