#!/usr/bin/env bash

### Regular Expressions

shopt -s extglob

str="kostas"

if [[ $str =~ ^k.*$ ]]; then
	echo "ok1"
else
	:
fi

if [[ $str =~ ^g.*$ ]]; then
	echo "ok2"
else
	:
fi

word=abc
if [[ $word != "abc" ]]; then
	echo "condition is true"
fi

#-------------------------------------------------------------------------

# SubShell: Evaluate list of commands in a subshell, meaning that its environment is distinct from the current shell and its parameters are contained.
#          e.g (list)

# Evaluate list of commands in the current shell, sharing the current shell's environment.
#         { list ; }

# The spaces and trailing semicolon here are obligatory.

# Example 
unset x; (x=hello; echo $x); echo $x  # prints nothing because new "x" was in the subshell

#-------------------------------------------------------------------------

# Brace Expansions - Arbitrary Word Generation

# String generation: prefix{ab,cd,ef}suffix
# Sequence generation: prefix{x..y}suffix
# Sequencing by specified increment: prefix{x..y..incr}suffix

#Example
# don't put spaces in between the members of the brace expansion
echo bash{,e{d,s},ful{,ly,ness},ing} 
echo {1..5}{0,5}%

# in bash 4
echo {10..55..5}%