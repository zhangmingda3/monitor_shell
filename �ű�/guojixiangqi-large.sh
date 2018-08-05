#!/bin/bash
############

for i in `seq 1 8`
do
  for j in `seq 1 8`
  do
  NU=$[$i+$j ]
  NM=$[NU%2]
  if [ $NM -eq 0 ];then
  echo -en "\033[41;37m  \033[0m"
  else
  echo -en "\033[42;37m  \033[0m"
  fi
  done
  echo
done
