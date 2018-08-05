#!/bin/bash
#####
DNS=$(grep ^nameserver /etc/resolv.conf | cut -b 12-)
exp="172.40.1.10"
if [ $DNS == $exp ];then
echo "DNS正确"
else
echo "DNS错误"
fi
echo $DNS
