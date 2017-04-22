#!/bin/sh

AGENT_FILE=./IntroscopeAgentFiles-NoInstaller10.5.1.8tomcat.unix.tar
MATHAPP_DIR=../mathapp-java/deploy
ACC_PACKAGE=./acc-controller-package.tar

cp $AGENT_FILE $AGENT_FILE $MATHAPP_DIR/MathClient.war mathclient/
cp $AGENT_FILE $AGENT_FILE $MATHAPP_DIR/MathSimpleBackend.war  mathsimple/
cp $AGENT_FILE $AGENT_FILE $MATHAPP_DIR/MathComplexBackend.war  mathcomplex/
cp $AGENT_FILE $AGENT_FILE $MATHAPP_DIR/MathProxy.war mathproxy/
