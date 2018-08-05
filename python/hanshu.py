#!/usr/bin/env python
# -*- coding: utf8 -*-
def get_fibs(num):     ##定义函数 函数名为get_fibs()
    fibs = [0,1]

    for i in range(num - 2):
        fibs.append(fibs[-1] + fibs[-2])

    return fibs


a = int(raw_input("您想生成多少个位 的列表： "))

b = get_fibs(a)
print  b
f = open('malist.txt','a')
f.write('%s\n' % b)
f.close()