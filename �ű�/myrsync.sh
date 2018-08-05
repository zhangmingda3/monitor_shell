#!/bin/bash
#######同步远程目录到本机############
rsyncip=192.168.4.5     ##定义要远程的主机地址
mulu=":/root/test/shell/" ##要远程的目录
mulu2="/root/NSD1605/zhangmingda/shell/"  ##默认同步到本地的目录
read -p "请输入要同步到本地的${rsyncip}${mulu}内的文件名[默认为所有文件]:" file
	[ -z $file ] && file=*  ##用户不输入文件名则默认目录内所有文件
read -p "同步到哪个目录（无输入默认$mulu2）:" directory
if			 	##用户不输入，默认为同步到本地$mulu2
       [ -z $directory  ];then  ##用户输入，同步到用户指定目录
	rsync -az ${rsyncip}${mulu}$file  $mulu2; exit
 else
	rsync -az ${rsyncip}${mulu}$file  $directory
fi
	
