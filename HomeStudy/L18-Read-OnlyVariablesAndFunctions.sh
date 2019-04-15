#!/usr/bin/env bash

### Read-Only Variables and Functions

# Sometimes you would want variables to remain read-only and not being able to be altered

var=10

readonly var

var=20                      # This will not work, its value is still 10

echo "This does not work anymore for variable $var" 

helloWorld() {            
  echo "Hello $1"  
}

readonly -f helloWorld     # for functions you need the -f flag

helloWorld() {              
  echo "Hello to no one"    # ..but you cannot alter its content
}
helloWorld World           # It CAN take arguments..

# Try to execute ${readonly} or ${readonly -f} to see all the built-in and custom-made  readonly variables and functions already being declared so in your system

#-------------------------------------------------------------------------
