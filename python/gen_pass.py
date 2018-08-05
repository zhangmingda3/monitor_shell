#!/usr/bin/env python
# -*- coding: utf8 -*-

import random
import string

all_char = string.letters + string.digits
def genpass():
    pwd = ''
    for i in range(8):

        pwd += random.choice(all_char)
    return pwd

print    genpass()