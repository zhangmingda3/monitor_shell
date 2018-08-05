#!/bin/bash
#######
if 	[ $1 == "redhat" ];then
	echo "fedora"
elif	[ $1 == "fedora" ];then
	echo "redhat"
else
	echo "Usage(fedora|redhat)"
fi
