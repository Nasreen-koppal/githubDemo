#!/bin/bash -x

partTime=1;
fullTime=2;
empRateperHour=20;
randomcheck=$((RANDOM%3));
if [ $fullTime -eq $randomcheck ]
then
	empHour=8;
elif [ $partTime -eq $randomcheck ]
then
	empHour=4;
else
	empHour=0;
fi
salary=$(($empHour*empRatePerHour));
