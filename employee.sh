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


isPartTime=1;
isFullTime=2;
empRatePerHrs=20;
randomCheck=$((RANDOM%3));

if [ $isFullTime -eq $randomCheck ]
then
	empHrs=8;
elif [ $isPartTime -eq $randomCheck ]
then
	empHrs=4;
else
	empHrs=0;
fi

echo salary=$(( $empHrs * $empRatePerHrs ))



isPartTime=1;
isFullTime=2;
empRatePerHr=20;
empCheck=$((RANDOM%3));

case $empCheck in
	$isFullTime)
		empHrs=8;;
	$isPartTime)
		empHrs=4;;
	*)
		empHrs=0;;
esac
echo salary=$(( $empHrs * $empRatePerHrs ))



isPartTime=1;
isFullTime=2;
totalSalary=0;
empRatePerHr=20;
numWorkingDays=20;

for (( day=1; day<=$numWorkingDays; day++ ))
do
	empCheck=$((RANDOM%3))
		case $empCheck in
			$isFullTime)
				empHrs=8;;
			$isPartTime)
				empHrs=4;;
			*)
				empHrs=0;;
		esac

		salary=$(($empHrs*$empRatePerHr));
		totalSalary=$(($totalSalary+$salary));
done


isPartTime=1;
isFullTime=2;
maxHrsinMonth=10;
empRatePerHr=20;
NumWorkingDays=20;
totalEmpHr=0;
totalWorkingDays=0;

while [[ $totalEmpHr -lt $maxHrsinMonth &&
	 $totalWorkingDays -lt $NumWorkingDay ]]
do
	((totalWorkingDays++))
	empCheck=$((RANDOM%3)) 
	case $empCheck in
		$isFullTime)
			emphr=8;;
		$isPartTime)
			empHr=4;;
		*)
			empHr=0;;
	esac
	totalEmpHr=$(($totalEmpHr*$empHr))
done

totalSalary=$(($totalEmpHr*$empRatePerHr))
