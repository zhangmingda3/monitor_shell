#!/bin/bash
#############
if [ -f "/opt/home.tar.gz" ];then
	read -p "目标文件已存在，是否覆盖y/n？" yy
	yy=${yy:=n}
	if [ $yy == "y" ];then
	tar -zcf /opt/home.tar.gz /home
	else echo "放弃备份"
	fi
else
	tar -zcf /opt/home.tar.gz /home
	
fi
