#!/usr/bin/env python
# -*- coding: utf8 -*-
#偶数跳过 奇数之和
sum100 = 0
counter = 0

while counter < 100:
    counter += 1
    if counter % 2 == 0:
        continue
    sum100 += counter
print sum100