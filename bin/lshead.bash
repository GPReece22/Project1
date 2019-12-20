#! /scripts/bash
# a command to list the first n number of lines of each file in a directory
# argument 1 is the directory to search
# argument 2 is the number of lines to display

if [ $# -eq 2 ]
then
	cd $Home
	directory=$1
	lines=$2

	ls
	head $directory/* -n $2
	exit

else
	echo "Incorrect numbr of arguments"
	echo "Please enter the directory and number of lines to display e.g:"
	echo "project/scripts 7"
	exit
fi
