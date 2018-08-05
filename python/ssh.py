#!/usr/bin/python

import paramiko

hosts = ['192.168.4.1','192.168.4.2']

comm = raw_input('command: ')
for ip in hosts:
	ssh = paramiko.SSHClient()
	ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
	ssh.connect(ip,username='root',password='Taren1')
	stdin,stdout,stderr = ssh.exec_command(comm)
	out = stdout.read()
	err = stderr.read()
	if out:
		print "[%s]out:\n%s" % (ip, out)
	if err:
		print "[%s]err:\n%s" % (ip, err)
	ssh.close()
