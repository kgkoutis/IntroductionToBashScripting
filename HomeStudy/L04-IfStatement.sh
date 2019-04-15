#!/usr/bin/env bash

### If Statement

### To use an if statement in a script the following structure is needed

### if [ condition ]
### then
###   statement
### fi

# or 

### if [ condition ]; then
###   statement
### fi


### NOTE: The condition should be between spaces, i.e. not [condition] but [ condition ]

#### --------------------------------------------------------------------------------
## RULES of comparison
##
## - integer comparison
## |   -eq : is equal to -> if ["$a" -eq "$b"]
## |   -ne : is not equal to -> if ["$a" -ne "$b"]
## |   -ge : is greater than or equal to -> if ["$a" -ge "$b"]
## |   -le : is lower than or equal to -> if ["$a" -le "$b"]
## |   -gt : is greater than -> if ["$a" -gt "$b"]
## |   -lt : is lower than -> if ["$a" -lt "$b"]

## also
## |   <  : is lower than -> (("$a" < "$b"))
## |   <= : is lower than or equal to -> (("$a" <= "$b"))
## |   > : is greater than or equal to -> (("$a" > "$b"))
## |   >= : is greater than or equal to -> (("$a" >= "$b"))

## - string comparison
## |   = : is equal to -> if ["$a" = "$b"]
## |   == : is equal to -> if ["$a" = "$b"]
## |   != : is not equal to -> if ["$a" != "$b"]
## |   < : is lower than, according to ASCII alphabetical order -> if [["$a" < "$b"]]
## |   > : is greater than, according to ASCII alphabetical order -> if [["$a" > "$b"]]
## |   -z : string is null, that is, has zero length

#### --------------------------------------------------------------------------------

## Integer Comparison

count=10
if [ "$count" -eq 10 ]; then # or [ $count -eq 10 ] or [ "$count" -eq "10" ] or [ $count -eq "10" ]
	echo 'The count is 10'
fi

### NOTE: the above will only run for comparing integers!! If count was e.g. 10.5 it would not work!

# again one could also write
count2=20
if (($count2 > 9)); then
	echo 'The count is bigger than 9 '
fi

### NOTE: To work with decimals one has to pipe the echoed numbers to the bc tool which is a language that supports arbitrary precision numbers with interactive executions of statements (more info: $man bc ). Let's give an example.

num1=10.8
num2=8.5

if (($(echo "$num1 > $num2" | bc -l))); then
	echo 'The bc -l result will verify 10.8 > 8.5 with a 1 which bash undestands it as true'
fi

### NOTE: check the result of bash for the following cases 1 and 0

if ((1)); then # This would work for any input like 2, 3, etc. any number except 0
	echo "One" # This will get printed out
fi

if ((2)); then 
	echo "Two" # This will also get printed out
fi

if ((0)); then
	echo "Zero" # This will not get printed out
fi

# You can have the classic if-else if (elif) structure
num=3

if (($num < 1));then
  echo "Number $num is smaller than 1"
elif (($num > 5));then
  echo "Number $num is greater than 5"
else   
  echo "Number $num is smaller than 1 and greater than 5"
fi


#### --------------------------------------------------------------------------------

## String Comparison

word=abc
if [ $word == "abc" ] 
then
	echo "condition is true"
fi

# single equal will also work, for string comparison only!

if [ $word = "abc" ]
then
	echo "condition is still true"
fi
word=avf    					# you can redeclare freely the variable
if [[ $word < "b" ]]  # remember to check alphabetical order in ASCII you need double square brackets (check above)!
then
	echo "condition is true here again"
fi
