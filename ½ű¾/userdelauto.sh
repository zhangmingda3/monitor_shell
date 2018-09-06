#!/bin/bash
#########自动删除用户10个###########
for i in {1..10}
do
userdel -r U$i 2>&1
done
