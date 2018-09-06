#!/bin/bash
soft=vsftpd
#######软件服务装包自启########
yum -y install $soft &> /dev/null   #安装变量soft指定的软件包所有正确和错误的信息丢弃
service $soft restart               #将服务启动
chkconfig $soft on                  #设置开机自启
#注意：软件包名称和服务名称一样才能用此脚本，例如vsftp httpd 但是NDS服务不能用，因为包名为bind-chroot，服务名为named
