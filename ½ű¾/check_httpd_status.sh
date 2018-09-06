#!/bin/bash
#auther：zhangmingda 13333392837
#########检查服务是否开启httpd是否开启
ip=`seq 1 4`
net="192.168.4."
port="80"
for i in ${ip}
do
	status=`nmap -n -sT ${net}${i} -p $port |grep -o open`
	if [ -z $status ];then
	 echo	"${net}${i} $port端口is down"
	else
	 echo	"${net}${i} $port端口is UP!"
	fi


done
