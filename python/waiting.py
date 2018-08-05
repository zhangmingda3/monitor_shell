#!/usr/bin/env python
# -*- coding: utf8 -*-

import time
import sys
for i in range(10):
    for ch in ['-','\\','|','/']:
        print 'Waiting...%s\r' % ch,
        sys.stdout.flush()
        time.sleep(0.3)
print