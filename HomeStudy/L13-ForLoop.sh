#!/usr/bin/env bash

### For loop

echo ${BASH_VERSION}  

### ΝΟΤΕ: If your version is less than 4, like (e.g. 3.4.12(1) you need to upgrade your bash to version 4 for all the commands in the script below to work. You do this by running the command $brew install bash) 

# The for loop is like the while loop and the until loop but we can essentially specify from before how many loops are we going to execute.

#-------------------------------------------------------------------------

#generic form 1

#for variable in 1 2 3 4 5 6 .. N # or variable in array 
#do
#  command 1
#  command 2
#  command 3
#  ...
#done

#e.g.
for i in 1 2 3 4 5
do
  echo "$i"             # echoes out 1 2 3 4 5 6
done

# another way is also
for i in {1..10..2}
do
  echo "$i"             # echoes out 1 3 5 7 9
done

#-------------------------------------------------------------------------

#generic form 2

#for (( EXP1; EXP2; EXP3))
#do
#  command 1 
#  command 2 
#  command 3 
#  ...
#done

for ((i=0;i<=10;i++));  # third entry defines the step
do
  echo "$i"            # echoes out 1 2 3 4 5 6 7 8 9 10
done

#-------------------------------------------------------------------------

#generic form 3

#for command in $(Unix-command-list here)
#do
#  command 1 
#  [execute $command]
#  command 3
#done

for command in ls pwd date;
do
  echo "--------$command--------"
  $command                          # this will execute the command
  echo "------------------------"
done

#-------------------------------------------------------------------------

#generic form 4

#for file in file1 file2 file3 .. fileN
#do
#  command 1 [on $file]
#  command 2 [on $file]
#  command 3 [on $file]
#  ...
#done

for item in *;          # Here * means iterate for all files in the current directory. Of course you could specify a list of files
do
  if [ -d $item ]       # echoes out randomFolder randomFolder2
  then
    echo $item
  fi
done

### NOTE: If in your current directory there are files with spaces in their names, (like "random Folder" instead of "randomFolder") you will see an error printed as "[: too many arguments"





#-------------------------------------------------------------------------
