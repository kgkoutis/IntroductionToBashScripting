#!/usr/bin/env bash

### Functions

# Functions have the following two forms, one is the following:

# function nameOfFunction(argument1, argument2, ..., argumentN ) {
#  [
#     place code here
#                       ]
# }

# or the following


# nameOfFunction(argument1, argument2, ..., argumentN ) {
#  [
#     place code here
#                       ]
# }

#-------------------------------------------------------------------------

# Let's see all this in action

function helloItsMe() {       # main form
  if [ $1 ]
  then
      echo "Hello its me, $1"
  else
      echo "Hello its me"
  fi
}

quit() {                      # alternative form
  exit
}

# We have to invoke the functions otherwise nothing will run

helloItsMe             # Hello its me
helloItsMe Kostas      # Hello its me, Kostas
quit

### NOTE: Order matters; If helloItsMe function is run before quit function as above, then the echo message will get echoed out. If the order was like as follows (uncomment to run), nothing will had been echoed out:
# quit
# helloItsMe # (or helloItsMe Kostas)

### NOTE: We already saw how arguments are used. They are positional like those of a script, they start from 1, so in order to take them into account, you just have to place them next to the name of the function
