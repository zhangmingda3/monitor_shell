#!/bin/bash
#########
NET=192.168.4.
for i in `seq 100`
do
	ping -c 3 -i 0.2 -w 2 ${NET}${i} &>/dev/null
	if
	[ $? -eq 0 ];then
		echo "主机${NET}${i} is OK" >> ping-ok.log
	else
		echo "该主机${NET}${i} is down!!!!!!!!" >>ping-error.log
	fi
done
