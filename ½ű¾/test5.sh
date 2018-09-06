#!/bin/bash

########预定义变量+命令使用示例脚本######

useradd $1
echo $2  | passwd --stdin $1
