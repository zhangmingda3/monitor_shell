#!/bin/bash
#装mysql上的agent服务
yum -y install perl-DBI*
yum -y install gcc gcc-c++
yum -y install perl-Log-Log4perl-1.26-1.el6.rf.noarch.rpm ##依赖包

##依赖包
tar -xf Proc-Daemon-0.03.tar.gz
cd Proc-Daemon-0.03
perl Makefile.PL
make 
make install
cd ..
###
tar -xf Algorithm-Diff-1.1902.tar.gz
cd Algorithm-Diff-1.1902
perl Makefile.PL
make
make install
cd ..
###
tar -zxvf mysql-mmm-2.2.1.tar.gz 
cd mysql-mmm-2.2.1
make install
cd ..
##
gunzip Net-ARP-1.0.8.tgz
tar -xf Net-ARP-1.0.8.tar
cd Net-ARP-1.0.8
perl Makefile.PL
make
make install 
cd ..

/etc/init.d/mysql-mmm-agent start
