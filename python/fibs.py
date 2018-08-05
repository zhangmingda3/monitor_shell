#!/usr/bin/env python
# -*- coding: utf8 -*-

fibs = [0,1]
num = int(raw_input('input number: '))
for i in range(num - 2):
    fibs.append(fibs[-1] + fibs[-2])
print fibs
