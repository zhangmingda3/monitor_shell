#!/bin/bash
######成绩等级评级#######if脚本示例####
read -p "告诉我你的成绩是多少:" chengji
if [ $chengji -ge 90 ];then
    echo "您是黄金圣斗士"
   elif [ $chengji -ge 80 ];then
   	echo "您是白金用户"
   elif [ $chengji -ge 70 ];then
          echo "您是优秀用户"
   elif [ $chengji -ge 60 ];then 
   	echo "您及格了！！"
   else 
   	echo "继续努力吧"
fi
