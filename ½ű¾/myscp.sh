#!/bin/bash
###########下载虚拟机中的内容############
read -p "scp链接192.168.4.？"  PC 
read -p "下载/root/test/shell/下的什么："  FILE
scp  -r root@192.168.4.$PC:/root/test/shell/$FILE  .
