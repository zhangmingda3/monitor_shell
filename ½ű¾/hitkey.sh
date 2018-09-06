#!/bin/bash
######
while :
do
read  -p "给我个字符，我肯定知道是什么： " KEY
case "$KEY" in [a-z]|[A-Z])
		echo "是字母耶！！o(∩∩)o...哈哈";;
		[0-9]|[0-9][0-9])
		echo "是数字，是数字，是数字，重要的事情说三遍";;
		*)
		echo "别想骗我--是空格或者其他字符";;
esac
	read -p "回车继续，或exit退出"	tuichu
	case $tuichu in
	"exit")	exit
	;;
	esac
done
