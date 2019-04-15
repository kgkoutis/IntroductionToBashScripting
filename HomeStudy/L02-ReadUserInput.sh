#!/usr/bin/env bash

### Read User Input


#echo "Enter name: "
#read name name2 name3
#echo "Entered name is: $name "
#echo "Entered name2 is: $name2 "
#echo "Entered name3 is: $name3 "

#### ------------------------------------------------------------------------------------

#read -p 'username : ' user_var  # this allows me to enter the input in the same line!
#echo "Your username is : $user_var"
#
## the -s flag allows me to enter a silent password!
#
### NOTE: It never works with "-ps" or "-p -s". It should be either "-s -p" or "-sp"
#
#read -s -p 'password : ' pass_var
#echo "Your password is : $pass_var" # ... of course here it will print out your password!

#### ------------------------------------------------------------------------------------

# echo "Enter names: " #e.g George Maria
# read -a names
# echo "Names : ${names[0]}, ${names[1]}" # prints out Names : George, Maria


### NOTE: the curly brackets {} are necessary
# in order to specify which elements of
# the array!! Otherwise:

# echo "Names : $names[0] $names[1]" # prints out Names: George[0] George[1]

#### ------------------------------------------------------------------------------------

# You can use the $REPLY global variable to access the default input of the user
# when you do not want to specify 

echo "Enter name: " 
read 
echo "Name is : $REPLY"   # whatever you give to name variable it will be printed out

#### ------------------------------------------------------------------------------------

# You can use the $REPLY global variable to access the default input of the user
# when you do not want to specify 
