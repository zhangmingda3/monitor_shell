#!/bin/bash
################################
cp -r $1 $2 &
while :
do
raw=`du -s $1 | awk '{print $1}'`
des=`du -s $2/$(basename $1) | awk '{print $1}'`
#num=$[$raw-$des]
percent=`echo "scale=2;$des/$raw" |bc`
num=`echo "scale=1;$percent*100" | bc `
#echo $num
#echo $percent
if [ "$num" != "100.00" ];then
	 echo -e "$num %\b\c"	###"\b\c"为退格键删除本行内容
	#sleep 0.1
	#clear
else
	echo "100% complete!" && exit
fi
done
