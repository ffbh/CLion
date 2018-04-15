#!/usr/bin/env bash

BaseDir="/home/fbh/CLionProjects/acm"
cd ${BaseDir}/Coding/
filenum=$(ls -l |grep "^-"|wc -l)
if [ ${filenum} -ne 0 ];
then
mv ${BaseDir}/Coding/*    CodeAccept/
fi