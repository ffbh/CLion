#!/usr/bin/env bash


#BaseDir="/home/ffbh/CLionProjects/acm"

BaseDir=$(dirname $(dirname $(readlink -f ${0})))
project=$(basename ${BaseDir})



FileName="4018"




FileName=$(echo ${FileName}| awk '{sub("^ *","");sub(" *$","");print}')


AllFileName="${FileName}".cpp

tempDir="/home/$(whoami)/"




echo ${FileName} > ${tempDir}jghfdsiergierb.hghageqr
sed -i "s/[ ][ ]*/\\\ /g" ${tempDir}jghfdsiergierb.hghageqr
specialFileName=$(cat ${tempDir}jghfdsiergierb.hghageqr).cpp
rm -f ${tempDir}jghfdsiergierb.hghageqr

bash ${BaseDir}/BashScript/clear.sh


cp ${BaseDir}/template/source.cpp   ${BaseDir}/Coding/"${AllFileName}"

echo -n "" >  ${BaseDir}/InOutput/input.txt





echo "" > ${BaseDir}/CMakeLists.txt

CmakeCmd="cmake_minimum_required(VERSION 3.9)
project(acm)
set(CMAKE_CXX_STANDARD 11)"

echo "${CmakeCmd}" >> ${BaseDir}/CMakeLists.txt

#add_executable(acm main.cpp)

echo -e "\n" >> ${BaseDir}/CMakeLists.txt

echo -n "add_executable(${project} " >> ${BaseDir}/CMakeLists.txt

echo -n "${BaseDir}/Coding/" >> ${BaseDir}/CMakeLists.txt

echo -n "${specialFileName}" >> ${BaseDir}/CMakeLists.txt

echo ")" >> ${BaseDir}/CMakeLists.txt









