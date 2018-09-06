#1/bin/bash
for i in `seq 1 6`
do
U=:`uuidgen | cut -b -2`
echo -n $U |tr [a-z] [A-Z] ###tr命令将小写字母转换为大写字母
done
echo
