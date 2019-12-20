# ! /scripts/bash
# a command to take filenames and make those files executbale to all users
# the argument taken is the file to have the permsiiosn changed for
# the owner will have rwx permission and the group and user will have x permission

if [ $# -eq 1 ]
then
	file=$1

	chmod 711 $file
	echo "Changed permission's for file $file"
	exit
else
	echo "Incorrect number of filename's entered"
	echo "Please enter one filename to change the permission's for"
	exit
fi
