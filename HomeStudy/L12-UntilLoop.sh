#!/usr/bin/env bash

### Until loop

# The until loop is like the while loop in terms of how its structure looks like. However, in the while loop we have a condition that if it is true, the loop continues, in contrast to the until loop that we have a condition that if it is true, the loop stops. Let us see an example.

n=1

while [ $n -le 10 ]           # if n is less or equal than 10, re-enter the loop
do
  echo "$n"
  n=$((n+1))                  # will print 1,2,3,4,5,6,7,8,9,10
done

echo ""                       # just leave a blank line
n=1

until [ $n -le 10 ]           # if n is less or equal than 10, stop the loop
do
  echo "$n"
  n=$((n+1))                  # will not print anything because n in the beginning is indeed less than 10!
done

#-------------------------------------------------------------------------
# To create an until loop from a while loop we have to convert the condition to its counterpart 

echo ""                       # just leave a blank line

until [ $n -gt 10 ]           # if is greater than 10, stop the loop
do
  echo "$n"
  n=$((n+1)) 
done

#-------------------------------------------------------------------------
