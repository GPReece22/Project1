#! /scripts/bash
# a command to list the names of the files in the waste bin and the number of bits in them
# the ls command is piped through awk so that they can both be displayed together

path=$HOME/project/waste
cd $path
echo "Files in the waste bin:"
ls -n | awk '{print $9, $5}'
