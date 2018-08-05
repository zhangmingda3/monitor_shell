#!/bin/bash
echo -n "倒计时 "
while :
do
   for ((i=9; i>=0; i--))
   do
   	echo -e "\033[42;31m$i\033[0m\b\c"
   	sleep 1
   done
done
