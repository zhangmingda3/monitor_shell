#!/bin/bash
####
i=1
sum=0
while [ $i -le 100 ]
do
	let sum+=$i
	let i++
done

	echo "1到100的和是：$sum"
