#! /scripts/bash
# a command to show the numbr of files in the waste directory

path=$HOME/project/waste
cd $path
numberOfFiles=$(ls -1 | wc -l)
echo "there are $numberOfFiles file(s) in the waste bin"
