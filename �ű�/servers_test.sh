#!/bin/bash
#####测试服务器是不是可用####
read -p "您想测试网站类型是http还是ftp ？" xuanze
read -p "请输入要测试的http网站ip:" haha
read -p "请输入网站根目录的任何一个文件名:" xixi
wget -O - $xuanze://$haha/$xixi &> /dev/null
if
  [ $? -eq 0 ]; then
  echo "${xuanze}网站可以访问"
else
 	echo "网站暂时不可用"
fi
