#!/bin/bash -x

for i in `seq 10`
do
	echo $(($RANDOM%11))
done

