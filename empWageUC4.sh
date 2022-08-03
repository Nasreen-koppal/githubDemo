#!/bin/bash -x

parttime=1;
fullTime=2;
empRatePerHour=20;
empCheck=$((RANDOM%3));

case $empChech in
	$fullTime)
		empHours=8;;
	$partTime)
		empHours=4;;
	*)
		empHours=0;;
esac
salary=$((empHours*empRatePerHour));

