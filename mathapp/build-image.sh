#!/bin/bash

tixnodefile="tixchangeNode.war"
tixrestfile="tixchangeRest.war"
errors=false

sudo=sudo
unamestr=`uname`

if [[ "$unamestr" == 'Darwin' ]]; then
	sudo=''
fi

if [ ! -e $tixnodefile ] ; then
	echo "FATAL: File $tixnodefile does not exist. Please provide this file before building the image"
	errors=true
fi

if [ ! -e $tixrestfile ] ; then
	echo "FATAL: File $tixrestfile does not exist. Please provide this file before building the image"
	errors=true
fi

if [ "$errors" = false ] ; then
	echo "Starting the build"
	$sudo docker build -t tix_tomcat .
fi
