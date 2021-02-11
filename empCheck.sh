#!/bin/bash -x

check=$((RANDOM%2))
isPresent=1


if [ $check -eq $isPresent ]
	then
		echo "Employee Present"
else
	echo "Employee Absent"
fi
