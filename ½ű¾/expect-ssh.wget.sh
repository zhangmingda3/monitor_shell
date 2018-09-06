#!/bin/bash
#######
from="http://192.168.4.5/a.txt"
to="/var/www/html/a.txt"
PSSW="Taren1"
	##第13行用expect解释器做下面自动交互动作
	##第13行<<起始符 结束符（结束符必须顶格)
	##第14行spawn 创建一个动作（此动作带来需要交互的界面）
	##第15行检测：expect{ "出现的字符"空格{send "发送对应指令\r"}}匹配出现的字符做动作
	##\r的作用为提交等于回车动作
	##expect eof的意思是退出此捕获反馈内容的状态，结束此次spawn动作
ssh-aoto(){	##定义一个函数
expect << END	
spawn ssh root@$1
expect {
	"(yes/no)" {send "yes\r"}
	"password:" {send "$PSSW\r"}
}
expect "\[root@pc205" {send "wget $from $to ; exit\r"}
expect eof
END
}
for ip in  `cat /root/ipaddrs.txt` ##在for内循环
do
ssh-aoto $ip	##直接调用这个函数做动作,这里的$ip就是第一个参数，自动被$1调用
done
