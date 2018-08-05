#!/usr/bin/env python
# -*- coding: utf8 -*-

import sys
import re

def grep(name,filename):

    cdict = {}
    str = re.compile(name)
    with open(filename) as lines:
         for line in lines:
             m = str.search(line)
             if m:
                 key = m.group()
                 if key in cdict:
                     cdict[key] += 1
                 else:
                     cdict[key]  = 1
    return cdict

if __name__ == '__main__':
    name = sys.argv[1]
    filenam = sys.argv[2]
    print grep(name,filenam)