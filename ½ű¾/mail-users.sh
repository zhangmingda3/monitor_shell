#!/bin/bash
###批量发送邮件#####公司所有员工
for i in `cat /root/users.txt`
do
	mail -s 'mail！！' $i </root/mail.txt 
	[ $? -eq 0 ]&& echo "$i@tedu.cn sed ok" >>/root/mail-ok.log ||echo "$i@tedu.cn sed failed" >>/root/mail-error.log
done
