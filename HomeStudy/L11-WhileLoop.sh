#!/usr/bin/env bash

### While loop

n=1

while [ $n -le 10 ]; do # or (( $n <= 10))
	echo "$n"
	n=$((n + 1)) # or use just (( n+1 )) or (( n++ ))

	# Extra possible options:
	# sleep(1) # the number specifies the amount of seconds you would like your machine to pause
	# open -na Terminal "`pwd`" # or open -na iTerm "`pwd`" # opens a new terminal in a new window
done

###NOTE: you can also use pre-increment (( ++n))

#-------------------------------------------------------------------------

# Read contents of a file with file redirection

### stdin Redirection:
# $ command < file

### stdout Redirection
# $ command > file
# $ command >> file

### stderr Redirection
# stdout to terminal and stderr to file:
# $ command 2> file

# stdout and stderr to different files:
# $ command > out_file  2> error_file

# stdout and stderr to the same file:
# $ command > file 2>&1

# To read from a file line by line you go as follows:

while read line; do
	echo $line
done <randomFile

### Fun fact: try instead of randomFile to pass L11-WhileLoop.sh and see what happens

# The above while command with fire redirection could be implemented with cat and pipe

cat randomFile | while read line; do
	echo $line
done

#---------------------------------------------------------------------------------------------------

## In general there can be errors on how you read a line and how you parse text in the line indentation, the special characers etc. For this you may need to define the IFS. IFS stands for "internal field separator". It is used by the shell to determine how to do word splitting, i. e. how to recognize word boundaries. Let us see an example below:

#IFS=" "                           # default option
#IFS=:                             # an alternative option
echo "" # just leave some space
mystring="foo:bar baz rab"
for word in $mystring; do # This is a for loop which we will introduce later
	echo "Word: $word"
done

# the result is either "Word: foo:bar", "Word: baz" and "Word: rab" or "Word: foo" and "Word: bar baz rab", depending if IFS was set as 'IFS=" "' or 'IFS=:'. In this regard, you can set it also in the while loop. Take note that when you set a new IFS in the while loop it is only changed in the scope of the while loop and not in all of the sc

while IFS=" " read -r line; do # -r flag prevents the backslash escape from being interpreted.
	echo $line
done <randomFile
