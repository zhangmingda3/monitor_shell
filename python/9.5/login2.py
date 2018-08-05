#!/usr/bin/env python
import getpass
name = raw_input('input you name: ')
password = getpass.getpass('input you mima: ')

if name == "bob" and  password == "123456":
        print 'welcome ',name ,'!'
else:
        print 'login incorrect'
