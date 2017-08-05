#!/usr/bin/evn bash
# File: guessinggame.sh

echo "Guess how many files are in the working directory: "

read guess

function get_file_number {
	local number=$(ls -l | wc -l)
	let number=number-1
	echo $number
}

correct=$(get_file_number)

while [[ $guess -ne $correct ]]
do
	if [[ $guess -gt $correct ]]
	then
		echo "Your guess is too high."
		echo "Guess again: "
		read guess
	else 
		echo "Your guess is too low."
		echo "Guess again: "
		read guess
	fi
done

echo "Correct answer!!!"

