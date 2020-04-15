#!/usr/bin/bash

stake=100
bet=1

while [[ $stake -lt '150' &&  $stake -gt '50' ]];
do
	result=$((RANDOM%2))
	if ((  $result == 1));
	then
		echo "WIN"
		stake=$(( $stake + 1 ))
		echo $stake
	else
		echo "Loss"
		stake=$(( $stake - 1 ))
		echo $stake
	fi
done
