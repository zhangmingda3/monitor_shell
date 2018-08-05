#!/usr/bin/env python
# -*- coding: utf8 -*-

import sys
def cp2(srcfile,desfile):
    oldfile = open(srcfile)
    newfile = open(desfile,'w')

    while True:
        data =    oldfile.read(4096)
        #if data == '':
        #if len(data) == 0:
        if not data:
            break
        newfile.write(data)
    oldfile.close()
    newfile.close()

cp2(sys.argv[1],sys.argv[2])