#!/bin/bash

##################扫描主机开了哪些服务#############
echo2(){
        echo -e "\033[$1m$2\033[0m"
}

net="192.168.4."
ip=`seq 1 3`

for IP in $ip
do
	echo2 32 "${net}${IP} 开启TCP的服务"
	nmap -n -sT ${net}${IP} | grep tcp
	echo2 32 "${net}${IP} 开启UDP的服务"
	nmap -n -sU ${net}${IP} | grep ucp
	#-n 选项： 不检查对应IP的域名
done
