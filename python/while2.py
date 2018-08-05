#!/usr/bin/python
# -*- coding:utf8 -*- ###指明这个文件中的语言含有中文，否则用中文注释会报错！

while True:	######如果为真
	print 'working'   #####打印working
	yn = raw_input('Continue(y/n)?')	##给用户提示；
	if yn == 'n':		##如果用户输入的是n，如果不是n，后面的不执行，返还循环
		break		##就退出
print  'done'