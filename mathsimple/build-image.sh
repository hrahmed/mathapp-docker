#!/bin/bash

AGENT_FILES=IntroscopeAgentFiles-NoInstaller10.5.1.8tomcat.unix.tar
ACC_PACKAGE=acc-controller-package.tar
MATH_SIMPLE=MathSimpleBackend.war


if [ ! -e $AGENT_FILES ] ; then
  echo "$AGENT_FILES is missing. Please download $AGENT_FILES from support.ca.com and place it in this directory."
fi

if [ ! -e $ACC_PACKAGE ] ; then
  echo "$ACC_PACKAGE is missing. Please download CA APM Command Center from support.ca.com, install it and copy $ACC_PACKAGE from the package direcory of the ACC server to this directory."
fi

if [ ! -e $MATH_SIMPLE ] ; then
  echo "$MATH_SIMPLE is missing. Please download and build MathApp from https://github.com/hrahmed/mathapp-java and copy $MATH_SIMPLE to this directory."
fi


sudo=sudo
unamestr=`uname`

#if [[ "$unamestr" == 'Darwin' ]]; then
	sudo=''
#fi

echo "Starting the build"
$sudo docker build -t mathsimple-java:1 .
