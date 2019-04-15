#!/usr/bin/env bash

# Don't forget to make me executable!

### Assignment: Complete the script to read your age. If your age plus 3 years:
#  a) is more or equal than 28 let it print "Congratulations, in 3 years from now, you will be more or equal to 28!". 
#  b) is less or equal than 28 let it print "Congratulations, in 3 years from now, you will still be less than 28!". 

# Also print the age range you belong to, and accordingly print:

#  a) "You are less than 20"
#  b) "You belong to the 20-25 age interval"
#  c) "You belong to the 25-30 age interval"
#  d) "You belong to the 30-35 age interval"
#  e) "You are more than 35"

# You can fill in the code below

read -p 'Your age is : ' age 
if (( $age + 3 >= 28 ))
then
  echo "Congratulations, in 3 years from now, you will be more or equal to 28!"
else
  echo "Congratulations, in 3 years from now, you will still be less than 28!"
fi           

if (( $age <= 20 ))
then
  echo "You are less than 20"
elif (( $age > 20 && $age <= 25 ))
then
  echo "You belong to the 20-25"
elif (( $age > 25 && $age <= 30 ))
then
  echo "You belong to the 25-30"
elif (( $age > 30 && $age <= 35 ))
then
  echo "You belong to the 30-35"
else
  echo "You are more than 35"
fi