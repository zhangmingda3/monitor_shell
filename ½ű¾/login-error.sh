#!/bin/bash
login_number=`who |wc -l`  ####统计当前登录用户个数
###################
[ $login_number -gt 3 ]&& mail -s "dangerous" root </root/loginerror.txt
#####调用变量做判断大于3个登录个数#大于3时发邮件给root
