#!/usr/bin/bash


bet=1
sum=0;
for ((day=0; day<20; day++))
do
stake=100
	while [[ $stake -lt '150' &&  $stake -gt '50' ]];
	do
		result=$((RANDOM%2))
		if ((  $result == 1));
		then
			echo "WIN"
			stake=$(( $stake + $bet ))
			#echo $stake
		else
			echo "Loss"
			stake=$(( $stake - $bet ))
			#echo $stake
		fi
	done
	echo $stake
	sum=$(( $sum + $stake ))
done
echo $sum
