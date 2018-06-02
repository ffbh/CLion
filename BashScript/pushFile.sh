#!/usr/bin/env bash
#BaseDir="/home/ffbh/CLionProjects/acm"
BaseDir=$(dirname $(dirname $(readlink -f ${0})))
OJ="zoj"

path=/work/code/code/${OJ}/${OJ}/code/

echo ${path}

mv ${BaseDir}/CodeAccept/*  ${path}

