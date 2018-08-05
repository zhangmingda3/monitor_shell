#!/usr/bin/env  python
# -*- coding: utf8 -*-
import string
import random
import sys
##
def createpass(num):
    passchar =  string.letters + string.digits
    passwd = ''
    for i in range(num):

        passwd += random.choice(passchar)
    return passwd
try:
    weishu = int(raw_input('生成几位数密码： '))
except ValueError:
    print '输入有误请输入一个数字：'
    print
    sys.exit(1)
except (KeyboardInterrupt,EOFError):
    print
    sys.exit(2)
if __name__ == '__main__':
    print createpass(weishu)
