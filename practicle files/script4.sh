#!/bin/bash

for i in {1..5}
do
	echo "$i"
done

a=0
while [ "$a" -lt 5 ]
do
	echo "$a"
	a=`expr $a + 1`
done
