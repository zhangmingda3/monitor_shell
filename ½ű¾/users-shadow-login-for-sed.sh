#!/bin/bash
#####将可以登录系统的所有用户名及相应密码字符串打印出来
line=`sed -n '/bash$/p' /etc/passwd`	###sed命令找可以登录系统的用户名的行
for i in $line
do
	users=`echo ${i%%:*}`	##用变量时注意！定义变量时会把一行内有空格的非连续的多个字符串定义为多个变量内容

   for p in $users
   do
    pass=`grep $p /etc/shadow`
    pas=`echo ${pass#*:}`
    pa=`echo ${pas%%:*}`
   echo "$p=====>$pa"
   done
done
