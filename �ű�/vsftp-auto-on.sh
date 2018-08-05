#!/bin/bash
#######ftp服务装包自启########
yum -y install vsftpd &> /dev/null
service vsftpd restart
chkconfig vsftpd on
