#!/usr/bin/env python
# -*- coding: utf8 -*-
sum100 = 0

for i in range(1,101):
    if i % 2 == 0:
        continue
    sum100 += i
print sum100
###如果 i % 2 == 0： 则为偶数，跳过循环则为留下奇数
###如果 i % 2：      则为当 为偶数时取余结果为0，为0 时if判断失败，下面的continue不执行，就保留下来偶数。