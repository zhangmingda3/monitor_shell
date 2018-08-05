#!/bin/bash
#########自动创建10个用户并设好密码############
for i in {1..10}   	#定义一个数字变量，在此循环内做do内的事情
do					
     useradd  U$i 2>> useradd-error.log   #添加用户U$1,错误导出
     echo "123" | passwd --stdin U$i 2>>passwd-error.log > /dev/null
        #为新创建的用户U$1添加密码，错误日志导出
done
