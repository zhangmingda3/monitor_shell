#!/bin/bash

if [ $# -ne 2 ];then
   echo "USAGE: $0 ipfile 'command'"
   exit 1
fi
if [ ! -f "$1" ];then
   echo "file $1 not found"
   exit 2
fi
IPFILE=$1
comm=$2

stty -echo
read -p "password: "  password
stty echo

for IP in $(cat $IPFILE)
do
   expect <<EOF
   spawn ssh root@$IP $comm
   expect "(yes/no)" {
       send "yes\r"
       expect "password:"
       send "$password\r"
       } "password:" { send "$password\r" } 
      expect eof
EOF
done
