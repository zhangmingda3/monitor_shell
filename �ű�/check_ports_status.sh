#!/bin/bash
#anther:mingda
#############检测某几台服务器服务都开启了什么
echo2(){
	echo -e "\033[$1m$2\033[0m"
}
zzjt=`echo2 32 服务正在监听`
ygb=`echo2 31 已经关闭`
###################定义了一个函数方便显示颜色调用##############
ports="20 22 21 23 25 67 68 80 443 110 143 873 995 993 3306 9000 11211"
#######要检测的端口#############################3
net="192.168.4."
########要检测的网段#######
ip=`seq 1 4` 	##末尾ip

 for IP in $ip
 do
   echo2 32 "${net}${IP} 主机的情况:"
   for port in $ports
   do
      status=`nmap -n -sT ${net}${IP} -p $port | grep -o open` # -n 选项:不解析ip的域名
      if [ -z $status ];then
        echo "${net}${IP} 端口 $port $ygb"
      else
        echo "${net}${IP} 端口 $port $zzjt"
      fi
   done
   echo #和下一个IP 检查有一行空行
 done
