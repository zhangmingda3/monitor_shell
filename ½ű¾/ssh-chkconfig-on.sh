#!/bin/bash
###################################
##将开机自启级别3状态关闭程序,改为3状态开机自启
hosts="5 100"
for i in $hosts
do
  ssh -X root@192.168.4.$i fuwu=`chkconfig --list | grep  --color "3:on" | awk '{print $1}'` echo $fuwu
  ssh -X root@192.168.4.$i	echo $fuwu
  ssh -X root@192.168.4.$i
    for i in $fuwu
    do
    	chkconfig --level 3 $i off
    done
	exit
done
