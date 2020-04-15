#!/usr/bin/bash

bet=1
sum=0;
won=0;
for ((day=0; day<30; day++))
do
stake=100
	while [[ $stake -lt '150' &&  $stake -gt '50' ]];
	do
		result=$((RANDOM%2))
		if ((  $result == 1));
		then
			#echo "WIN"
			stake=$(( $stake + $bet ))
			#echo $stake
		else
			#echo "Loss"
			stake=$(( $stake - $bet ))
			#echo $stake
		fi
	done
	if (($stake == 150 ))
	then 
		won=$(( $won + 1 ))
	fi
		echo $stake
		sum=$(( $sum + $stake ))
	
done
	echo "no of days he won = $won"
	echo "no of days he lost = "$(( 30-$won ))
	echo "ammount he won = " $(($won*50 ))
	echo "amount he lost = "$(( (30-$won)*50 ))
echo "Amount he have after one month " $sum