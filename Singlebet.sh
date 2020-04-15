#!/usr/bin/bash

stack=100
bet=1
result=$((RANDOM%2))
if ((  $result == 1));
then
	echo "WIN"
	stack=$(( $stack + 1 ))
else
	echo "Loss"
	stack=$(($Stack -1))
fi
