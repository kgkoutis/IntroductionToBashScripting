#!/usr/bin/env bash

### Arrays

# arrays have the following form, delimitter is space, not comma
os=('ubuntu' 'android' 'windows')
# if I want to assign something at the array I do the following
os[2]='mac'

# To echo out the array you need the @ symbol inside the []!
### NOTE: you cannot avoid wrapping everything to ${} since otherwise the results will be the following:

echo "${os[2]}"  # or ${os[2]}, this echoes out mac, the third entry
echo "${os[@]}"  # @ will print out sequentially all elements of the array
echo os[@]       # this will print os[@] you need to specify os[@]!
echo "${!os[@]}" # An extra ! in fron of the name of the array will give out the indices of the array 0 1 2
echo "${#os[@]}" # An extra # in front of the name of the array will give the length of all the elements of the array

#-------------------------------------------------------------------------

### NOTE: Instead of using @ you can use also * . They behave entirely the same, but when you expand the array with "${os[@]}" or "${os[*]}" they behave differently:

os2=("${os[@]}") # I expand the array to populate the entries of the new array. Since double quotes are present it gives out "ubuntu" "android" and "mac"
os2[1]='debian'
echo "os2 is ${os2[*]}" # It gives out "ubuntu" "debian" and "mac"

os2=("${os[*]}") # I expand the array to populate the entries of the new array. Since double quotes are present it gives out "ubuntu android mac"
os2[1]='debian'
echo "os2 is ${os2[*]}" # It gives out "ubuntu android mac" and "debian"

#-------------------------------------------------------------------------

# To append an extra value to the array you simply do
os[${#os[@]}]='kali'
echo "${os[@]}" # "ubuntu" "android" "mac" and "kali"

# to remove a value from the array i use the unset command
unset os[3]
echo "${os[@]}" # "ubuntu" "android" and "mac"
unset os[0]
echo "${os[@]}" # "android" and "mac"

### NOTE: In bash you can add an element at any index without having the need to initialize others. For example I may do

os=('ubuntu' 'android' 'windows')
os[7]='KDE'
echo "${os[5]}" # It echoes out nothing
echo "${os[7]}" # It echoes out "KDE"
echo "${os[@]}" # It echoes out "ubuntu" "android" "windows" and "KDE", skipping the intermediate values

#---------------------------------------------------------------------------

# Bash permits array operations on variables also, even if they are not explicitely declared as arrays

string=hello
echo "${string[@]}"  # It echoes out "hello"

# but you cannot print specific characters since all the content of the string will be assigned in the first entry of the array
echo "${string[1]}"  # It echoes out nothing
echo "${string[0]}"  # It echoes out "hello", all the content goes here
echo "${#string[@]}" # As expected the length of this array is only 1
#--------------------------------------------------------------------------------
