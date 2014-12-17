#!/bin/bash
ARMGCC=/opt/armgcc/bin
JAVA_HOME=/opt/jdk
JRE_HOME=$JAVA_HOME/jre
CLASSPATH=.:$JAVA_HOME/lib:$JRE_HOME/lib

PATH=$ARMGCC:$JAVA_HOME/bin:$PATH
export JAVA_HOME JRE_HOME CLASSPATH PATH