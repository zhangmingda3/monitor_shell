#!/usr/bin/env python
# -*- coding: utf8 -*-


while True:
    num = int(raw_input("请输入你的考试成绩： ")) #int直接把字符转化为 数字（int）
    select = raw_input("继续吗？(y/n)")
    if num > 100:
        print "就没这么大的"
        continue
    if  num > 90:
        print  "成绩优秀"
    elif num > 80:
        print   "成绩好哦"
    elif num > 70:
        print '良好'
    elif num > 60:
        print '及格了'
    else:
        print '您啊 要努力了'
    if select == "n":
        break

