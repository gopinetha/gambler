#!/usr/bin/bash

bet=1
sum=0;
won=0;
lucky=0
luckyday=0
unlucky=1000
unluckyDay=0
winstrack=0
lossstrack=0
for ((i=0; i<30; i++))
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
		if (( $i == 0 || winstrack <= 0 ))
		then
			winstrack=1
			lossstrack=0
		else 
			winstrack=$(($winstrack+1))
			if (( $winstrack > $lucky ))
			then
				luckyday=$i
				lucky=$winstrack
			fi
		fi
	else
		if (( $i == 0 || $lossstrack >= 0 ))
		then 
			lossstrack=-1
			winstrack=0
		elif (( $lossstrack < 0))
		then
			lossstrack=$(( $lossstrack -1 ))
			if (( $lossstrack < $unlucky))
			then 
				unlucky=$lossstrack
				unluckyDay=$i
			fi
		fi
	fi
		echo $stake
		sum=$(( $sum + $stake ))
	
done
	echo "no of days he won = $won"
	echo "no of days he lost = "$(( 30-$won ))
	echo "ammount he won = " $(($won*50 ))
	echo "amount he lost = "$(( (30-$won)*50 ))
echo "Amount he have after one month " $sum
echo "lucky day "$luckyday
echo "unlucky day "$unluckyDay