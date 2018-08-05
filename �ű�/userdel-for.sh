#!/bin/bash
########批量添加用户并设好密码
USERS=$(cat /root/users.txt)

for UNAME in $USERS  ##名字如果在里面
do 			##就循环一下添加用户动作
	userdel -r $UNAME 
	[ $? -gt 0 ]&& continue		##如果用户已不存在就跳过
done
