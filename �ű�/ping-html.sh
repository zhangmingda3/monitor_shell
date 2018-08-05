#!/bin/bash
###ping网页中所有的域名
name=`grep -o "[0-9a-Z]*\.qq\.com" $1 | sort -u `
for i in $name
do
	ping -c 1 -i 0.5 $i -w 1
#	host $i
done
