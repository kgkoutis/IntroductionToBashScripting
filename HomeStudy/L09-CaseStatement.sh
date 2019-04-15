#!/usr/bin/env bash

### The case statement

# give an argument to the script. Run f.e. ./L9-CaseStatement.sh car
vehicle=$1

case $vehicle in
"car")
	echo "Rent of $vehicle is 100 dollar"
	;;
"motorcycle" | "bike") # either one or the other
	echo "Rent of $vehicle is 50 dollar" ;;
*) # default case
	echo "Unknown vehicle" ;;
esac

# you can use a pattern for the cases

echo -e "Enter some character: \c"
read value

case $value in
[a-z]) ### NOTE: not "[a-z]" but [a-z]
	echo "You entered a small letter, $value" ;;
[A-Z]) ### NOTE: If this never reaches this case although your input is capital, then you need to specify in your terminal LANG=C
	echo "You entered a capital letter, $value" ;;
[0-9]) ### NOTE: not "[a-z]" but [a-z]
	echo "You entered a small letter, $value" ;;
?) # this pattern matches any single special character, because it indicates 0 or 1 occurences of a preceding character, and letters and numbers are already taken. It is the equivalent of . for regex patterns
	echo "You entered a special character, $value" ;;
*) # default case, this pattern matches any multiple (special or not) character
	echo "You entered $value which could be anything" ;;
esac

#--------------------------------------------------------------------------------
