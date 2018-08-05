#!/usr/bin/env python
# -*- coding: utf8 -*-
import re

def count_patt(fname,patt):
    result = {}
    cpatt = re.compile(patt)
    with open(fname) as fobj:
        for line in fobj:
            m = cpatt.search(line)
            if m:
                key = m.group()
                if key in result:
                    result[key] +=1
                else:
                    result[key] = 1
    return result
if __name__ == '__main__':
    http_log = '/var/log/httpd/access_log'
    ip = '^(\d+\.){3}\d+'
    br = 'Firefox|MSIE'
    print count_patt(http_log,ip)
    print count_patt(http_log,br)