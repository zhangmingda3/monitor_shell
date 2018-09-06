#!/bin/bash
#安全检测脚本/var/log/secure
#要求：
#1.实时判断是否有人连接服务器出现密码错误 
#2.如果密码或用户名出错3次，则加入防火墙，并记录日志，一个ip不要重复添加，
#################################################
LOGINERROR="/var/log/login-error.log" ##用户名输错3次，以及用户名对密码输错三次的安全日志存放地
while :
do
dangerous=`awk '$5~/sshd/&&$6~/Failed/&&$10~/from/{IP[$11]++} END{for(i in IP){print IP[i],i}}' /var/log/secure | awk '{if($1 >= 3){print $2}}'`
NAMEINV=`awk '$5~/sshd/&&$6~/Invalid/&&$7~/user/{IP[$10]++} END{for(i in IP){print IP[i],i}} ' /var/log/secure  | awk '{if($1 >= 3){print $2}}'`
	for i in	$dangerous
	do
		grep $i $LOGINERROR &>/dev/null &&continue	##先确认黑名单中没有记录再添加到防火墙，如果防火墙黑名单已经有就跳过
		iptables -I INPUT -s $i -p tcp --dport 22 -j REJECT	##添加到防火墙
		echo "IP：$i 通过ssh远程方式连续输入错误超过3次,已将其加入防火墙" >> $LOGINERROR
	done
	for p in $NAMEINV
	do
		grep $p $LOGINERROR &>/dev/null &&continue
		iptables -I INPUT -s $p -p tcp --dport 22 -j REJECT
		echo "IP:$p 通过ssh远程方式用户名输入错误超过3次,已将其加入黑名单">>$LOGINERROR
	done
	for m in '-' '\' '|' '/'
	do
	printf "monitor... %s\r" % $m
	sleep 0.3
	done 
done
