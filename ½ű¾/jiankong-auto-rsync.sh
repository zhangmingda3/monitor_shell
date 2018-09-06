#!/bin/bash
########
echo "检测U盘是否插入。。。"
while :
do
	if [ -d /media/SANDISK_USB/ ];then
	  echo "$(date)检测到U盘插入，每30秒自动动同步一次" > /root/桌面/U盘检测.log
	  sleep 1
	  /bin/myrsyncusb && echo "$(date)同步成功"  >> /root/桌面/U盘检测.log
		echo -n "倒计时 "
		 for ((i=15; i>=0; i--))
		 do
        	  echo -e "\033[42;31m$i\033[0m\b\c" 
        	  sleep 1
		 done
		echo
	else  echo -e "\033[44;31m*\033[0m\b\c" &&sleep 0.2 && echo -e "\033[41;32m@\033[0m\b\c" && sleep 0.5
	fi
done
