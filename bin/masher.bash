#! /scripts/bash
# masher interactive command - follows deign brief
ok=1
masher=""
character=""
charcount=-1
lettercounr=0
numcount=0
noncount=0

while [ $ok -eq 1 ]
do
	echo "Please input a series of characters or * to terminate"
	read input
	masher="$masher$input"
	if [[ $input != "" ]]
	then
		size=${#masher}

		for(( index = 0; index < $size; index++ ))
		do
			character="${masher:$index:1}"
			charcount=$((charcount+1))

			if [[ $character == "*" ]]
			then
				ok=0
				control=$((index+1))
				break

			elif [[ $character == [A-Z] ]]
			then
				lettercount=$((lettercount+1))

			elif [[ $character == [0-9] ]]
			then
				numcount=$((numcount+1))

			elif [[ $character != [[:alnum:]] ]]
			then
				noncount=$((noncount+1))
			fi
		done
	else
		echo "No string entered"

	fi
done
echo "You have input the string: $masher"
echo ""
echo "Number of letters processed: $lettercount"
echo "Numbe of digits processed: $numcount"
echo "Number of non alpha numeric characters processed: $noncount"
echo ""
echo "Total number of characters in the string (including control): ${#masher}"
echo "Control value at position: $control"
echo "Characters before control value: $charcount"

