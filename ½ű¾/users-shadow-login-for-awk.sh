#!/bin/bash
###用awk选择行，过滤列；分别提取用户名和对应密码字段
users=`awk -F : '/bash$/{print $1}' /etc/passwd`
for u in $users
do
pass=`awk "/$u/{print}" /etc/shadow | awk -F : '{print $2}'`
	echo "$u的密码是$pass"
done

