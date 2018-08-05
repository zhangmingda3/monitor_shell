#!/bin/bash
#####
PERFIX="tuser"
i=1
while [ $i -le 5 ]

do
	useradd ${PERFIX}${i} >/dev/null
	[ $? -eq 0 ]&&echo  "123456" | passwd --stdin ${PERFIX}${i}
	#####如果创建成功才设置密码，避免给已存在的重名用户设置密码
	let i++
done
