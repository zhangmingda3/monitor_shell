#!/bin/bash
########查看当前cpu的类型是32位还是64位#####
grep -qw 'lm' /proc/cpuinfo 
if [ $? -eq 0 ];then
	echo "当前CPU型号是64位的" 
else
	echo "当前cpu为32位的"
fi
