#!/bin/bash
IP_ADDRESS=$1
    if [  -n "$IP_ADDRESS" ] ; then
    
    	while :
    	do
    		PING_OK=`ping -c 1 -W 2  $IP_ADDRESS  | grep "time=" `
    		if [ 0 -eq $? ]; then
    			echo "$PING_OK $TIME_ `date`" >> PING_${IP_ADDRESS}_OK.log
    		else
    			echo "PING $IP_ADDRESS 2seconds TMOUT...  `date`"  >> PING_${IP_ADDRESS}_TMOUT.log
    		fi
    	
    		sleep 1
    	done
    else
    	echo "用法：$0 <IP or 域名>"
	echo "监控日志请到当前目录下获取" 
    fi
