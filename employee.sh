#!/bin/bash -x

echo "welcome employee wage problem"

isPresent=1;
randomCheck=$((RANDOM%2));

if [ $isPresent -eq $randomCheck ]
then
	echo " Employee is Present"
else
	echo "Employee is Absent"
fi


if [ $isPresent -eq $randomCheck ]
then
	empRatePerHrs=20;
	empHrs=8;
	salary=$(($empHrs*$empRatePerHrs))
else
	salary=0;
fi
