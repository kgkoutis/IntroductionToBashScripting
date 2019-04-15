#!/usr/bin/env bash

### Assignment: Complete the cheerleading script so as the cheerleading function goes like this:

# You: I
# Them: I
# You: B
# Them: IB
# You: M
# Them: IBM
# You: .

# When you press fullstop the script should stop the cheerleading
# The script is mostly done.. can you complete it? 

function cheerleading () {
  read -p "You: " nextLetter	     
  if [  ]                                 # stop when the input is a fullstop
  then 
  nextLetter=$1                           # make nextLetter to be the previous input + the new input!
  echo "Them: $nextLetter"
   $nextLetter	                          # Something is missing here before ' $nextLetter'... what?
  fi
}

cheerleading	                            # Something is missing here... what?