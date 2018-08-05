#!/usr/bin/env python
# -*- coding: utf8 -*-

for ch in 'hello':
    print ch
######列表
for word in ['hello','world']:
    print word
##元组
for word in ('hello','world'):
    print  word
###列表
adict = {'name':'zhangbin','age':'33'}
for info in adict:
    print '%s : %s' % (info,adict[info])