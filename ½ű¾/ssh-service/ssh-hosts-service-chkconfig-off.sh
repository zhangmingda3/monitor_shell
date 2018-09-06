#!/bin/bash
#######stop remote hosts-service#############
service="crond NetworkManager"
IP=`seq 1 5`
#########################################
for i in $IP
do
  for y in $service
  do
  ssh root@192.168.4.$i  chkconfig --level 3 $y off
  done
done
