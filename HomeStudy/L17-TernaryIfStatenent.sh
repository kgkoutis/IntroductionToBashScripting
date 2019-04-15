#!/usr/bin/env bash

### Ternary If Statement

# In this part we present some crucial theory for the reader to grasp and then we give an example exercise to work with

# You may have seen in other programming languages if expressions of the following form (here Java):

# int a;
# int b=4;
# int c=20;
# int d=10;

# (b == 5) ? a = c : a = d; 

# In the above example we say, if b equals to 5, then a receives the value of c, otherwise a receives the value of d. It is a short form of an if-else block. In the above example we can see that a is going to take the value of d.

# In bash we can play around the ternary operator but we have to be a little careful. To this we observe the following properties of the logical operators

#   - The AND '&&' operator can give the following results:

      #          false AND false = false       
      #          false AND true = false        
      #          true AND false = false        
      #          true AND true = true          

      # It can be immediately seen that if one of the two condition is false, then the result is always false. 

#   - The OR '||' operator can give the following results:

      #          false OR false = false       
      #          false OR true = true         
      #          true OR false = true         
      #          true OR true = true          

      # It can be immediately seen that if one of the two condition is true, then the result is always true. 

#   - In all modern programming languages, short-circuit evaluation is being used for the AND and OR operations. Short-circuit evaluation basically says that when there is an AND or an OR comparison, you can immediately check what is on the left side of the operator and if possible, assing boolean values to the condition in question immediately. As we saw above, with the AND operator, when the left side is false, there is no need to evaluate the right side, since the result is false. Also with the OR operator, when the left side is true, there is no need to evaluate the right side, since the result is true. Therefore, when short-circuit evaluation is applied AND and OR operations turn into if-blocks, namely:

      # AND operator:
      # x && y -------------> if x then y else false,  
      
# meaning if x is false, then the condition is surely false, and if x is true then the condition is what y is, true or false.

      # OR operator:
      # y || z -------------> if y then true else z,  
      
# meaning if y is true, then the condition is surely true, and if y is false then the condition is what z is, true or false.

      # When combined these operators, the results is the following:
      # AND+OR = AND operator, then OR operator
      # x && y || z  -------------> if x then y; true else false; z

### We notice also the that if x, y and z represent conditions or statements, the parts corresponding to true or false don't alter anything (to test this, simply type true or false to the command line of your terminal). Therefore all of the above can be seen as:

      # x (condition) && y (statement) -----> if x then y,    <=== a normal if-true block
      # y (condition) || z (statement) -----> if !y then z,    <=== a normal if-false block
      # x (condition) && y (statement1) || z (statement2) -----> if x then y else z  <=== a normal if-else block
      
### NOTE: As we saw above the generic result of the AND+OR operator is 

    # if x then y; true else false; z

    # However, if for whatever reason the exit code (https://www.tldp.org/LDP/abs/html/exit-status.html) of a command (or statement or script) other than z is non-zero, meaning there is an error found then, the above code becomes:

    # if error then z

    # The most dangerous thing to happen is if y statement, for whatever reason, errors since it would finally lead to z operator.
    # To return an error on purpose you have to place the return command with an argument bigger than 0 (e.g.  $return 1 ), because 0 means that all went well. 
      
#-------------------------------------------------------------------------

# A function example

# With everything that was explained above, it should be easy for the reader to understand what this script does

checkUsage() {
  echo "You need to provide an argument"    # run this script with an argument (ShScBeg17 randomFile)
  echo "usage: $0 file_name" 
}

checkIfFileExists() {
  local file=$1
  [[ -f "$file" ]] && return 0 || return 1   # return 0 === all went well, return 1 === there was an error
}

[[ $# -eq 0 ]] && checkUsage

if [ $checkIfFileExists "$1" ]  # or simply if checkIfFileExists $1 
then
  echo "File found"
else
  echo "File not found"
fi


#----------------------------------------------------------------------------------------------------



optionA() {
  a=1 
  echo "optionA $a"
  echo ""
  return 0
}

optionB() {
  a=2 
  echo ""
  echo "optionB $a" 
  return 1
}

#a=0
# echo $a
[[ -f "randomFile1" ]] && optionA || optionB
[[ -f "randomFile" ]] && optionA || optionB
