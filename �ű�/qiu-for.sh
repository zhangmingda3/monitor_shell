#!/bin/bash
#########for循环双色球#############
    echo -n "  红球:" ; sleep 3
for i in {1..6}
do
    redstring="  $redstring $red"
    red=$[$RANDOM%33+1]
    echo $redstring | grep -qw $red && continue
    echo -n "  $red"	##必须先检查$redstring中是否已出现过$red,再$red添加到$redstring中，如果先添加再检查则肯定会成立造成私循环。
    sleep 3	####如果同时定义$red和$string会造成死循环
    let i++
done
echo
echo -n "  篮球:"; sleep 3
echo $[$RANDOM%16+1]
