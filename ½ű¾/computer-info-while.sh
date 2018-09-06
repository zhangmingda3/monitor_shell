#!/bin/bash
####

while :
echo -e "\033[40;37m
##########菜单############
#您想查看什么信息？     ##
#1、cpu参数             ##
#2、内存使用情况        ##
#3、系统版本            ##
#4、开机运行级别        ##
#5、内核版本            ##
#6、IP                  ##
#7、退出                ##
##########################\033[0m" ###循环内重复给出提示######
read -p '请输入您的选择[1-7]：' xuanze #定义变量等待使用着赋值

do				##做判断
clear
	if   [ $xuanze == 1 ];then	##用户赋予变量的值是否等于要求，相同做相应的动作
	 cat /proc/cpuinfo |grep "vendor"
	 cat /proc/cpuinfo |grep "cpu MHz"
	 cat /proc/cpuinfo |grep "cache size"
	 echo -e "\033[44;37m 按回车键继续 \033[0m" 
	 read	##单独一个read能够让上一条命令执行后暂停！！等待用户给予赋值但是没有变量等待赋值，回车后继续下面的动作 
	elif [ $xuanze == 2 ];then
	free -mh |grep + | awk '{print $4}'
	 echo -e "\033[44;37m 按回车键继续 \033[0m" 
	 read 
	elif [ $xuanze == 3 ];then
	 cat /etc/redhat-release
	 echo -e "\033[44;37m 按回车键继续 \033[0m" 
	 read 
	elif [ $xuanze == 4 ];then
	 runlevel
	 echo -e "\033[44;37m 按回车键继续 \033[0m" 
	 read 
	elif [ $xuanze == 5 ];then
	 uname -r
	 echo -e "\033[44;37m 按回车键继续 \033[0m" 
	 read 
	elif [ $xuanze == 6 ];then
	ifconfig eth0 | grep "inet addr" | sed 's/B.*//g' |sed 's/.*://g'
	 echo -e "\033[44;37m 按回车键继续 \033[0m" 
	 read 
	elif [ $xuanze == 7 ];then
	exit
	else	##都不复合字符串要求，给出提示
	# echo '您输入了错误的信息请输入【1-7】!回车继续！！'
	echo '只能输入【1-7】请重新选择！！！ '
	fi
done
