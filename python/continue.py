#!/usr/bin/python
# -*- coding:utf8 -*- ###指明这个文件中的语言含有中文，否则用中文注释会报错！

sum100 = 0	###定义几个变量
counter  = 0	###从零开始

while counter < 100:	###counter在此范围内循环一次
	counter += 1	###每次值增加1
	if counter % 2 == 1:	###如果除以2等于1，则证明counter的是奇数
		continue	###则跳过本次循环
	sum100 += counter	###变量sum100的最终值等于sum100+变量counter的值
print sum100		###打印出变量sum100最终的值
