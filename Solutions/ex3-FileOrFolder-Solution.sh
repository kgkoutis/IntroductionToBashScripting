#!/usr/bin/env bash

# Don't forget to make me executable!

### Assignment: Complete the script to read a file and check if it is a file or folder. If it is a folder it should send a message to the user that this is a folder, if it is a file print that this is a file, otherwise send a message that the file does not exist

# You can fill in the code below

read -p 'The file or folder is : ' fileName

if [ -d $fileName ]; then
	echo "$fileName is a folder"
elif [ -f $fileName ]; then
	echo "$fileName is a file"
else
  echo "$fileName does not exist"
fi
