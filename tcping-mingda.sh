#!/bin/bash

#if [ ! -d "/var/log/ping_log" ];then
#    mkdir /var/log/ping_log
#else

    GUEST_IP=$1
    GUEST_PORT=$2
    
    if [  -n "$GUEST_IP" ] && [  -n "$GUEST_PORT" ]; then
    	while :
    	do 
    	    TCPING_STDOUT=`tcping -t 2  $GUEST_IP $GUEST_PORT | awk  '{ print $0"\t" strftime("%Y-%m-%d-%H:%M:%S") }'` 
            echo $TCPING_STDOUT |grep open
	    #echo $? 
            if [ $? -eq '0' ] ; then
    		echo $TCPING_STDOUT >>  $GUEST_IP"-tcp-"$GUEST_PORT"-Open.log"
            else
    		echo $TCPING_STDOUT >> $GUEST_IP"-tcp-"$GUEST_PORT"-Close.log"
            fi
    
    	sleep 0.5
    	done
    
    else
    	echo "用法：$0 <IP or 域名> <端口>"
        echo "监控日志请到当前目录下获取" 
    fi
#fi
