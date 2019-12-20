#! /scripts/bash
# a command to remove old files from the waste directory
# the find command is used to find all files in the wastebin for longer than 7 days
# these are then showed to the user and they are given the option to delete them
# the rm command is used to remove all files found ny the find command

cd
echo "Files in the waste bin that have been there for more than a week:"
find project/waste -type f -mmin +100
echo "Would you like to delete them, Y/N"
read choice

if [ $choice == y ]
then
	find project/waste -type f -mmin +100 -exec rm -f {} +
	echo "files deleted"
	exit
else
 	echo "no files deleted"
	exit
fi

