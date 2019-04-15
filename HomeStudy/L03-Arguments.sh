#!/usr/bin/env bash

### Arguments

# With the following way you pass arguments to the script

### NOTE: Now, after executing ./L3-Arguments.sh pass 
# some arguments, e.g. ./L3-Arguments.sh Tom Mary Bob

echo $0 $1 $2 $3 # in the above example prints out ./L3-Arguments.sh Tom Mary Bob

### NOTE: argument $0 holds the script name!

# another way to pass the arguments as an array is to use the <arrayName>=("$@")


#### --------------------------------------------------------------------------------

args=("$@") 
echo ${args[0]} ${args[1]} ${args[2]} ${args[3]} # in the above example prints out Tom Mary Bob

# NOTE: The script name here cannot be accessed. In the zeroth position you have the first argument (in the above example Tom) in the first position the second argument (in the above example Mary) etc etc. If there is no argument given it will print nothing


#### --------------------------------------------------------------------------------

# you can access all argument of course at once with the $@. In the above example:

echo $@ # prints out Tom Mary Bob

#### --------------------------------------------------------------------------------

# you can also find out the amount of arguments you passed in the script with the $# operator
 
echo $# # in the above example is 3