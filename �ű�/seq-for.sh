#!/bin/bash
###测试seq理解for循环中in的意思，in就是给前面的变量赋值
for i in `seq 1 2 9`
do 
	echo "$i"
	echo "hello the world"
done
