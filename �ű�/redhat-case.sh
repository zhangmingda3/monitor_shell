#!/bin/bash
#######
case 	$1	in
redhat) 
	echo "fedora";;
fedora)
	echo "redhat";;
[a-z])
	echo "是个字母耶！";;
[0-9])				####
	echo "是个数字耶！";;
*)
	echo "Usage(fedora|redha）";;
esac
