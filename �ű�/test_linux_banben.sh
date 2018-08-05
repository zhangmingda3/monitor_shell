#!/bin/bash
######测试当前系统是不是redhat#########
grep -qi 'red hat' /etc/redhat-release && echo "当前系统为红冒企业版"
