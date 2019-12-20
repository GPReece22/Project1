#! /scripts/bash
# a command to get an overview of all custom scripts in a directory
# the user inputs the directory they wish to search
# each file is searched for lines starting with a # and these lines are then displayed

cd $HOME
if [ $# -eq 1 ]
then
	cd $1
	echo "Here is an overview of bash scripts in the directory:"
	grep -r '^#'
	exit
else
	echo "Please enter one directory to search e.g:"
	echo "project/scripts"
	exit
fi
