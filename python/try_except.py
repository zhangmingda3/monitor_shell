#!/usr/bin/env python
# -*- coding: utf8 -*-
import sys
try:
    num = int(raw_input('number: '))
    result = 100 / num

except ValueError: #没加圆括号，后面跟个字母 把错误原因赋值给变量e打印出来
    print  'Invalid input'
except ZeroDivisionError:
    print 'cannot be zero'
except(KeyboardInterrupt,EOFError):
    print
    #exit(1)
else:               ###没有异常时做的动作
    print result
finally:            ###不管是否有异常都执行
    print 'done'