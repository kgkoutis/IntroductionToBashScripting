#!/usr/bin/env bash

### File test operations

# The \c operator below is to keep the cursor on the same line of the echoed ouput. To enable interpretation of this operator, you need to add in front the -e flag, otherwise it will be printed out literally like characters of a string

echo -e "Enter the name of the file: \c"
read file_name

### NOTE: This works the same as:
#read -p 'Enter the name of the file: ' file_name

if [ -e $file_name ]; then # the -e flag checks whether the file exists or not!
	echo "$file_name file found!"
else
	echo "$file_name file not found!"
fi

if [ -f $file_name ]; then # the -f flag checks whether the file exists AND is a file!
	echo "$file_name file found and indeed it is a file!"
else
	echo "$file_name is either not found, or is not a file, or both!"
fi

read -p 'Enter the folder name: ' folder_name
if [ -d $folder_name ] # the -d flag checks whether the folder exists AND is a folder!
then
  echo "$folder_name folder exists and indeed it is a folder!"
else
  echo "$folder_name is either not found, or is not a folder, or both!"
fi

# A normal file that contains characters and numbers is call a character-special file, while a file that contains raw binary data such as an image or a video is a block-special file. You check whether a file is the one or the other with the -c or -b flag.


if [ -b $file_name ]  # try with -c
then
	echo "$file_name is indeed a block special file"
else 
	echo "$file_name is a character-special file"
fi

# A file can be empty or not. To test this we use the -s flag (if true, not empty)

if [ -s $file_name ] 
then
	echo "$file_name file is not empty"
else 
	echo "$file_name file is empty"
fi

# A file can be allowed to be read or not, written or not, executed or not
#e.g.

if [ -r $file_name ]
then
	echo "$file_name file is readable"
else
	echo "$file_name file is not readable"
fi

### IN TOTAL THE FLAGS ARE
# -e exists or not
# -f it is a file or not
# -d it is a directory or not 
# -s the file is empty or not
# -r the file is readable or not
# -w the file is writable or not
# -x the file is executable or not

### These are not all the flags! More flags can be found in the terminal if you execute -> man test . One that interest us below is:
# -z True if the length of string is zero.  (It is used for strings only!)

### NOTE: you can also check folder with all the flags, also with -s, since everything is file in linux architecture. The thing is that folders are never 0 bytes. For this you have to do other manipulation you can use the -z flag with the following substitution

if [ -z "$(ls -A ./$folder_name)" ]   #test it with randomFolder and randomFolder2 
then
   echo "Empty"
else
   echo "Not Empty"
fi

#### --------------------------------------------------------------------------------
