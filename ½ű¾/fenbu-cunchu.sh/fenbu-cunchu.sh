#!/bin/bash
###要求:##########################
#1.创建3个目录(1,2,3)
#2.使用脚本随机往3个目录下存数据
#  ./test.sh  -w  a.txt
#3.用户随时可用查看复制的数据内容
# ./test.sh  -r  a.txt
##################################
num=$[RANDOM%3+1]
mulu=mulu
case $1 in
-w)
	filename=`basename $2`  ##注意用法,basename是个系统命令取值加``
	grep $filename log.txt >/dev/null &&echo "$2文件已存在" && exit	##如果日志中已经有这个文件就不要再复制
	cp -r $2 /root/test/shell/fenbu-cunchu.sh/mulu$num
	echo "$filename ---> $mulu$num" &>>log.txt
;;
-r)
	grep $2 log.txt >/dev/null 
	  if [ $? == 0 ];then 		 ##没有找到记录,告诉用户不存在,找到记录再帮用户查
	  cha=$(awk "/$2/{print \$3}" log.txt) &>/dev/null
	  awk '{print}' $cha/$2  2> /dev/null
	else
	  echo "$2文件不存在"
	fi
;;
*)
;;
esac
