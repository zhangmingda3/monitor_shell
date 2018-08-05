#!/bin/bash
#####while循环测试#######
i=1
while [ $i -le 5 ] ###当i取值在此范围内时做动作
do
	echo -n $i	##具体动作	
	let i++	##做完一次动作将i的值加1，再交给while判断
done
echo
