#!/bin/bash
#########测试计划任务备份脚本##########
tar -zcf log-`date +%Y%m%d%H%M`.tgz /var/log  
#此脚本中动作为将/var/log目录进行归档打包并以gzip格式压缩成压缩包
#在执行计划任务时可以调用此脚本，进行日志备份
