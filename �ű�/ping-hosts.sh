#!/bin/bash
#########
HOSTS=$(cat /root/hosts-ip.txt)
for IP in $HOSTS
do
	ping -c 3 -i 0.2 -w 2 $IP &>/dev/null
	if
	[ $? -eq 0 ];then
		echo "主机${IP} is OK"
	else
		echo "该主机${IP} is down!!!!!!!!"
	fi
done
