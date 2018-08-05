#!/bin/bash

########预定义变量+命令使用示例脚本######
read -p  "创建用户！！！请输入用户名和密码，中间用空格分开：" aaa bbb
useradd $aaa
echo $bbb  | passwd --stdin $aaa
