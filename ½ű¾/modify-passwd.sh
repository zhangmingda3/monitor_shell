#!/bin/bash
#####测试read定义变量不给赋值，使用者给予赋值，并且执行脚本内容#####
read -p "请输入用户名："  user      #输出提示，定义变量user
stty -echo                          #关闭回显
read -p "请输入密码："  pass        #输出提示，定义变量pass
stty echo                           #关闭回显
echo $pass | passwd --stdin $user   #执行修改密码动作
