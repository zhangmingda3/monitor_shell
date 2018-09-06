#!/bin/bash

net="192.168.4."
PASS="Taren1"
for i in 133
do
expect	<<END
spawn  ssh-copy-id ${net}${i} 
 expect {
  "(yes/no)" {send "yes\r"}
  "password" {send "$PASS\r"}; exit\r
 }
 expect eof
END
done

ssh-add
