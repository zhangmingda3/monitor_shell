#!/bin/bash
############双色球脚本测试############
echo -n "红球：" ;  sleep 3
i=1
while [ $i -le 6 ]
do
   red=$[$RANDOM%33+1]
   echo $redstring | grep -qw $red && continue
   echo -n "  $red"
   redstring="  $redstring $red"
   sleep 3
   let i++
done
echo
echo -n "篮球："; sleep 3
echo "   $[$RANDOM%16+1]"
