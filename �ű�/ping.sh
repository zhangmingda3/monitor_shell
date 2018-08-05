#!/bin/bash
#########自定义的ping包动作#######
ping -c 3 -i 0.2 -w 1 $1 &>/dev/null  #####输出结果扔掉
if [ $? -eq 0 ];then                ######if判断如果成功；则
  echo "该主机$1 可以ping通！！"   ######告诉我成功
else                            ########否则
  echo "该主机${1}无法ping通"  ########告诉我不通
fi
