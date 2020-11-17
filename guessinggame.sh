#!bin/bash

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
user_num=0
while [[ ! $num -eq $user_num ]]; 
do
	echo "Please, enter estimated number of files in the current directory:"
	read user_num
	check_number $num $user_num
done
echo "Congradulations! You guessed the number)"