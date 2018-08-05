#!/usr/bin/env python
# -*- coding:utf8 -*-

import sys
import getpass
import paramiko
import threading
import os

def remote_comm(host, pwd, comm):
    ssh = paramiko.SSHClient()
    ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
    ssh.connect(host, username='root', password=pwd)
    stdin, stdout, stderr = ssh.exec_command(comm)
    out = stdout.read()
    err = stderr.read()
    if out:
        print "[out]%s:\n%s" % (host, out),
    if err:
        print "[err]%s:\n%s" % (host, err),
    ssh.close()

if __name__ == '__main__':
    if len(sys.argv) != 3:
        print "Usage: %s ipfile 'command'" % sys.argv[0]
        sys.exit(1)
    if not os.path.isfile(sys.argv[1]):
        print "No such file:", sys.argv[1]
        sys.exit(2)
    ipfile = sys.argv[1]
    command = sys.argv[2]
    passwd = getpass.getpass('远程主机密码: ')
    with open(ipfile) as fobj:
        for line in fobj:
            ip = line.strip()
            t = threading.Thread(
                target=remote_comm,args=(ip, passwd, command)
            )
            t.start()
