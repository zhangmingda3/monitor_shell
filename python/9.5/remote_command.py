#!/usr/bin/env python
# -*- coding: utf8 -*-

import sys
import getpass
import paramiko
import threading
import os

def  remote_ssh(host,comm,passwd):
    ssh = paramiko.SSHClient()
    ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
    ssh.connect(host, username='root', password=passwd)
    stdin, stdout, stderr = ssh.exec_command(comm)
    out = stdout.read()
    err = stderr.read()
    if out:
        print "[OUT]:%s\n%s" % (host,out),
    if err:
        print  "[ERR]:%s\n%s" % (host,err),
    ssh.close()



if __name__ == '__main__':
    if not os.path.isfile(sys.argv[1]):
        print "no such file"
    filename = sys.argv[1]
    command = sys.argv[2]
    passwd = getpass.getpass("iniput passwd: ")

    with open(filename) as line:
        for ipn in line:
            ip = ipn.strip()
            ##执行
            t = threading.Thread(target=remote_ssh,args=(ip,command,passwd))
            t.start()