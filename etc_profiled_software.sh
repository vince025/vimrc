#!/bin/bash
CROSS_COMPILER=/opt/cross_compiler/gcc-arm-none-eabi/bin
JAVA_HOME=/opt/jdk
JRE_HOME=$JAVA_HOME/jre
CLASSPATH=.:$JAVA_HOME/lib:$JRE_HOME/lib
OPT_BIN=/opt/applications/bin
GO_PATH=/usr/local/go/bin
LD_PATH=/usr/local/lib
ESP_PATH=/opt/esp/xtensa-lx106-elf/bin

LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$LD_PATH
PATH=$ESP_PATH:$GO_PATH:$OPT_BIN:$JAVA_HOME/bin:$CROSS_COMPILER:$PATH
export JAVA_HOME JRE_HOME CLASSPATH PATH LD_LIBRARY_PATH
