#！/bin/bash
######输入用户名删除用户#####清除家目录#####
read -p "请输入要删除的用户名:"  USERD
read -p "确定删除用户$USERD同时删除家目录？？？" yy
[ $yy=y ]&& userdel -r $USERD

