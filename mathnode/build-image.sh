#!/bin/bash


sudo=sudo
unamestr=`uname`

#if [[ "$unamestr" == 'Darwin' ]]; then
	sudo=''
#fi

echo "Starting the build"
$sudo docker build -t math-node:1 .
