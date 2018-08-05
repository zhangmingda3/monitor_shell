#!/bin/bash
#####
PERFIX="tuser"
i=1
while [ $i -le 5 ]

do
	userdel -r ${PERFIX}${i} >/dev/null
	[ $? -gt 0 ]

	let i++
done
