#!/bin/bash
ARMGCC=/opt/armgcc/bin
ARMEABIGCC=/opt/arm_compiler/gcc-arm-none-eabi-4_7-2013q1/bin
JAVA_HOME=/opt/jdk
JRE_HOME=$JAVA_HOME/jre
CLASSPATH=.:$JAVA_HOME/lib:$JRE_HOME/lib

PATH=$ARMGCC:$ARMEABIGCC:$JAVA_HOME/bin:$PATH
export JAVA_HOME JRE_HOME CLASSPATH PATH
