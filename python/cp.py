#!/usr/bin/env python

srcfile = '/data/hosts'
desfile = '/data/new.hosts'

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