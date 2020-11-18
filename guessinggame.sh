#!/usr/bin/env bash

function check_number {
	if [[ $2 -gt $1 ]]
	then
		echo "No, try smaller value"
	elif [[ $2 -lt $1 ]] 
	then
		echo "No, try larger value"
	fi
}

num="$( find . -maxdepth 1 -type f | wc -l )"
user_num=-1
while [[ ! $num -eq $user_num ]]; 
do
	read -p 'Please, enter estimated number of files in the current directory:' user_num
	if ! [[ "$user_num" =~ ^[0-9]+$ ]]
	then 
    	echo 'Input should be a number, please try again!' 
    	continue 
	fi 
	check_number $num $user_num
done
echo "Congradulations! You guessed the number)"