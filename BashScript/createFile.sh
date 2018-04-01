#!/usr/bin/env bash


BaseDir="/home/fbh/CLionProjects/acm"


FileName="Path Counting"




FileName=$(echo ${FileName}| awk '{sub("^ *","");sub(" *$","");print}')


AllFileName="${FileName}".cpp


echo ${FileName} > /home/fbh/jghfdsiergierb.hghageqr
sed -i "s/[ ][ ]*/\\\ /g" /home/fbh/jghfdsiergierb.hghageqr
specialFileName=$(cat /home/fbh/jghfdsiergierb.hghageqr).cpp
rm -f /home/fbh/jghfdsiergierb.hghageqr


mv ${BaseDir}/Coding/*    CodeAccept/

cp ${BaseDir}/template/source.cpp   ${BaseDir}/Coding/"${AllFileName}"

echo -n "" >  ${BaseDir}/InOutput/input.txt





echo "" > ${BaseDir}/CMakeLists.txt

CmakeCmd="cmake_minimum_required(VERSION 3.9)
project(acm)
set(CMAKE_CXX_STANDARD 11)"

echo "${CmakeCmd}" >> ${BaseDir}/CMakeLists.txt

#add_executable(acm main.cpp)

echo -e "\n" >> ${BaseDir}/CMakeLists.txt

echo -n "add_executable(acm " >> ${BaseDir}/CMakeLists.txt

echo -n "${BaseDir}/Coding/" >> ${BaseDir}/CMakeLists.txt

echo -n "${specialFileName}" >> ${BaseDir}/CMakeLists.txt

echo ")" >> ${BaseDir}/CMakeLists.txt









