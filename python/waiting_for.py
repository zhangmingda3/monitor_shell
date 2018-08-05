#!/usr/bin/env python
# -*- coding: utf8 -*-
import time
for char in '-' '\\' '|'  '/':
    print 'Waiting...%s\r' % char,
    time.sleep(0.3)