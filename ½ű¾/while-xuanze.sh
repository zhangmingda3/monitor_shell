#!/bin/bash
####

while :
read -p  '您想查看什么信息？
1、cpu参数
2、内存使用情况
3、系统版本
4、开机运行级别
5、内核版本
6、退出
请输入您的选择： ' xuanze
do
	if   [ $xuanze -eq 1 ];then
	cat /proc/cpuinfo | grep "model name" 
	elif [ $xuanze -eq 2 ];then
	echo `free -mh`
	elif [ $xuanze -eq 3 ];then
	echo `cat /etc/redhat-release`
	elif [ $xuanze -eq 4 ];then
	echo `runlevel`
	elif [ $xuanze -eq 5 ];then
	echo `uname -r`
	elif [ $xuanze -eq 6 ];then
	exit
	else
	echo '您输入了错误的信息'
	fi
done
