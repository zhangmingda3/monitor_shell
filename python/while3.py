#!/usr/bin/env python
# -*- coding: utf8 -*-
##奇数跳过，求 偶数之和
sum100 = 0
counter = 0

while counter < 100:
    counter += 1
    if counter % 2:
        continue
    sum100 += counter
print sum100