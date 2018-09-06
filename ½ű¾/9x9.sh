#!/bin/bash
########9*9乘法表########
for i in `seq 9`
do		####先做i取值，取完后做小循环 
    for j in `seq 9`
	do 
	[ $j -gt $i ]&&continue  ###跳过j大于i的取值（去除重复的相乘）
    echo -n 	"${j}*${i}=$[${i}*${j}]   " ###输出结果
    done
    echo #######$j取完一个循环回车一次
done
