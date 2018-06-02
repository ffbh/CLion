#!/usr/bin/env bash

#BaseDir="/home/ffbh/CLionProjects/acm"
BaseDir=$(dirname $(dirname $(readlink -f ${0})))
cd ${BaseDir}/Coding/
filenum=$(ls -l |grep "^-"|wc -l)
if [ ${filenum} -ne 0 ];
then
mv ${BaseDir}/Coding/*    ${BaseDir}/CodeAccept/
fi