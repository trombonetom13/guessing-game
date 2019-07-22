#! /usr/bin/env/bash
echo "Can ya guess how many files are in the directory? :> I will only tell you if you guess right :P"

function gib {
		read answer
	number=$(ls | wc -l)
}

gib

while [[ $answer -ne $number ]]
do
	if [[ $answer -lt $number ]]

	then
		echo "It's a bit more than that"
	else
		echo "It's a bit less than that"
	fi

	gib

done

echo "congrats you guessed correctly! you get a cookie"

ls -l

