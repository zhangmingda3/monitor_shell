#!/usr/bin/python
# -*- coding:utf8 -*- ###指明这个文件中的语言含有中文，否则用中文注释会报错！
import getpass   ##导入getpass模块隐藏密码

username = raw_input("username: ")    ##定义username变量
password = getpass.getpass("password: ")  ##定义password变量
if username == 'bob' and password == '123': ##对变量做判断
	print "Login sucessful!"    		##打印
else:						##否则
	print "Login incorrect!!!!!!!1"		##打印
