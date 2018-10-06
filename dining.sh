#!/bin/sh

if [ $# -ne 1 ]; then
	echo "dining.sh <on|off|max>"
	exit 1
fi

command=$1

if  [ $command = "on" ]; then
	python3 irrp.py -p -g12 -f codes dining:on
elif [ $command = "off" ]; then
	python3 irrp.py -p -g12 -f codes dining:off
elif [ $command = "max" ]; then
	python3 irrp.py -p -g12 -f codes dining:max
fi

