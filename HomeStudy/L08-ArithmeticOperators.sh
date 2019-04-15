#!/usr/bin/env bash

###  Perform arithmetic operations


# 1. INTEGERS

echo 1+1 # echoes out 1+1, does not work
num1=20
num2=5

# basic operations - 1st way $((<operand> <operator> <operand>))
echo $((num1 + num2))
echo $((num1 - num2))
echo $((num1 * num2))
echo $((num1 / num2))
echo $((num1 % num2))
echo ''

# basic operations - 2nd way $(expr $<operand> <operator> $<operand>)
echo $(expr $num1 + $num2)
echo $(expr $num1 - $num2)
echo $(expr $num1 \* $num2)  ### NOTE: You need to escape the asterisk in the 2nd way or it will crash!!
echo $(expr $num1 / $num2)
echo $(expr $num1 % $num2)
echo ''

# 2. FLOAT

num1=20.5
num2=5

# use the bc tool. -l flag takes care of the precision
echo "$num1 + $num2" | bc -l
echo "$num1 - $num2" | bc -l
echo "$num1 * $num2" | bc -l
echo "$num1 / $num2" | bc -l  
echo "scale=2; $num1 / $num2" | bc # you can define how many decimal places you need (precision)
echo "$num1 % $num2" | bc  # here the infinite precision should be lost

echo "sqrt($num2)" | bc -l  
echo "$num2^3" | bc -l
echo ''

### NOTE: more info in man bc

#--------------------------------------------------------------------------------
