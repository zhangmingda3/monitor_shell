#!/bin/bash
####脚本目的:找到可以登录主机的用户名和相应的密码字符串###
###本脚本用的技术:for grep cut######主要是cut命令剪切字符串的应用#
users=`grep /bin/bash /etc/passwd | cut -d ":" -f 1` ##取可以登录系统的用户名
for i in $users
do
	j=`grep $i /etc/shadow | cut -d ":" -f 2` ##查找相应的密码字符串
	echo "$i===>$j"
done
