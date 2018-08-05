#!/bin/bash

############
 fuwu=`chkconfig --list | grep  --color "3:on" | awk '{print $1}'`
##过滤出当前在第三3开机级别状态，开机自起的服务名称，设置成开机不自起
for y in $fuwu
do
        chkconfig  --level 3 $y off
done
