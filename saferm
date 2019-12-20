#! /scripts/bash
# a command to remove files safely by moving them in to a sepcial waste directory
# argument 1 is the file to remove
# the files is copied form the current directory into the waste directory using cp
# it is then remove from the current directory using rm

if [ $# -eq 1 ]
then
	location=$HOME/project/waste
	file=$1
	cp $file $location/$file
	rm $file

	exit


else
	echo "Incorrect numbr of arguments"
	echo "Please enter the name of the file you wish to remove"
	exit
fi
