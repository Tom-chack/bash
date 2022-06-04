#!/bin/bash

calc(){
	local sum=$(($1 + $2))
	echo $sum

	#For Method 3
	#return $sum
}

#Method 1 ##################
num=`calc 2 4`
echo "Result sum 1:" $num

#Method 2 ###################
num=$(calc 2 4)
echo "Result sum 2:" $num

#Method 3 ###################
#calc 3 5
#num=$?
#echo "Result sum 2:" $num

