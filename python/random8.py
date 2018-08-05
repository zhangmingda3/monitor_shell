#!/usr/bin/env  python
# -*- coding: utf8 -*-
import string
import random
import sys
##
def createpass(num):
    passchar =  string.letters + string.digits
    passwd = ''
    for i in range(int(num)):

        passwd += random.choice(passchar)
    return passwd

weishu = raw_input('生成几位数密码： ')
if  weishu.isdigit():
    if __name__ == '__main__':
        print createpass(weishu)

