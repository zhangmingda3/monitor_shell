#!/bin/bash

yum -y install vsftpd
sed -i '$a chroot_local_user=YES' /etc/vsftpd/vsftpd.conf
service vsftpd restart
chkconfig vsftpd on
