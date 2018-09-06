#/bin/bash
#author:mingda
# 监控负载均衡集群中某台web服务器端口关闭,就将lvs中负载均衡的目标地址撤除,恢复后再添加到表里
VIP="192.168.4.100:80"
RIP1="192.168.4.1"
RIP2="192.168.4.2"

while [ 1 ] #如果里面有值(空格也算,0也是值),则为真
do
  for IP in  $RIP1 $RIP2
  do
     WEB_STAT=$(nmap  -n -sT $IP -p 80 2> /dev/null2 | grep -o  open)
     		 ##grep成功则变量不为空，说明httpd开启
     IP_IN_IPVS=$(ipvsadm -Ln  | grep -w "$IP")
     #########grep成功，变量赋值，则不为空，表内有这个ip
  
     if [ -n "$WEB_STAT" -a -z "$IP_IN_IPVS" ]; then #tcp80口开着，表里没有
     	ipvsadm -a -t $VIP -r $IP -m  ##就添加
     elif [ -z "$WEB_STAT" -a -n "$IP_IN_IPVS" ]; then #tcp80口关着，表里有
     	ipvsadm -d -t $VIP  -r $IP  #就删
     fi
  done
  sleep 0.5 #休息0.5秒 
done
