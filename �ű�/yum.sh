#!/bin/bash

net="192.168.4."
PASS="Taren1"
sshmod(){
expect <<END
spawn  ssh-copy-id ${net}${i} 
 expect "(yes/no)" {
	send "yes\r"
	expect "password:" 
	send "${PASS}\r"
	} "password:" {send "${PASS}\r"}  
 expect eof
END
}
for i in   4 #`seq 1 3`
do
sshmod
#ssh-copy-id ${net}$i 
ssh ${net}$i  sed -i '/baseurl/s#file.*#ftp://192.168.4.254/rhel6#' /etc/yum.repos.d/rhel6.repo
ssh ${net}$i yum-config-manager --add ftp://192.168.4.254/rhel6/LoadBalancer
ssh ${net}$i  "sed  -i  '$ agpgcheck=0' /etc/yum.repos.d/192.168.4.254_rhel6_LoadBalancer.repo"
done

