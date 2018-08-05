#!/bin/bash

rm -rf user.tmp

line=`sed -n '/bash$/p' /etc/passwd`

for i in $line

do

   echo ${i%%:*} >>user.tmp

   done



   for j in `cat user.tmp`

   do

   pass1=`grep $j /etc/shadow`

   pass2=`echo ${pass1#*:}`

   pass=`echo ${pass2%%:*}`

   echo "$j---->$pass"

   done
