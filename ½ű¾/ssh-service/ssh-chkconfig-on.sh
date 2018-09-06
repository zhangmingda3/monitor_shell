#!/bin/bash
###################################
##将开机自启级别3状态关闭程序,改为3状态开机自启



hosts="5 100"
：for i in $hosts
do
  
  ssh -X root@192.168.4.$i "bash" < /root/chkconfig.sh
###ssh到主机后执行的命令都在另外一个脚本里，通过ssh到的主机“bash”执行,
 
done
