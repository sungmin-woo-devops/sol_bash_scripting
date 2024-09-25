#!/bin/bash

if [ $# -ne 1 ] ; then
	echo "Usage: $0 <process>"
	exit 1

	PROCESS="$1"
	ps -ef | grep head -1
	ps -ef | grep $PROCESS | grep -vw grep | grep -vw ps | grep -vw pps.sh
fi
