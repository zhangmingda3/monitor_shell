#!/bin/bash
#########自动提交同步脚本到ftp://172.40.50.111####
	 cd /root
 	 echo 3 | ./svn_tools.py &> /dev/null
if
[  $? -eq 0 ];then
	 echo "$(date)同步到172.40.50.111成功" >>/root/桌面/172.40.50.111.log
else
	echo "同步到172.40.50.111失败" >>/root/桌面/172.40.50.111error.log
fi
