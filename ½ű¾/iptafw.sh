#!/bin/bash
#########2016.07.19 TsengYia.
#########定义方便移植的环境变量########
INET_DEV="eth1"
INET_IP="174.16.16.1"
LAN_WWW="192.168.4.5"
LAN_NET="192.168.4.0/24"
SSH_P="${LAN_WWW}:22"
IPT="/sbin/iptables"

#######################################

#$IPT -t filter -X
#$IPT -t nat -X
#$IPT -t mangle -X
#$IPT -t raw -X
$IPT -t raw -F
$IPT -t mangle -F
$IPT -t nat -F
$IPT -t filter -F
$IPT -P INPUT DROP
$IPT -P FORWARD ACCEPT
$IPT -P OUTPUT ACCEPT
/sbin/modprobe -a nf_nat_ftp nf_conntrack_ftp
$IPT -t nat -A POSTROUTING -s $LAN_NET  -o $INET_DEV -j SNAT --to-source $INET_IP
$IPT -t nat -A PREROUTING -i $INET_DEV -d $INET_IP -p tcp -m multiport --dport 20:21,80 -j DNAT --to-destination $LAN_WWW
$IPT -t nat -A PREROUTING -i $INET_DEV -d $INET_IP -p tcp --dport 2345 -j DNAT --to-destination $SSH_P
$IPT -t nat -A PREROUTING -i $INET_DEV -d $INET_IP -p udp --dport 53 -j DNAT --to-destination $LAN_WWW
$IPT -A INPUT -p tcp --dport 22 -j ACCEPT
$IPT -t nat -A PREROUTING -i $INET_DEV -d $INET_IP -p tcp --dport 20:21 -j DNAT --to-destination $LAN_WWW




