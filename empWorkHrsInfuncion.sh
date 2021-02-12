#!/bin/bash -x


is_full_time=1
is_part_time=2

function getWorkHrs() {

local empCheck=$1
case $empCheck in
	$is_full_time)
		empHrs=12
		echo $empHrs
			;;
	$is_part_time)
		empHrs=8
		echo $empHrs
         ;;
   *)
      empHrs=0
		echo $empHrs
         ;;
esac
}


empCheck=$(( RANDOM%3 ))
EmpHrs=$(getWorkHrs $empCheck)

echo "Work Hour is "$EmpHrs
