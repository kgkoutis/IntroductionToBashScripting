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
  if [ "$nextLetter" != '.' ] 
  then
  nextLetter=$1$nextLetter
  echo "Them: $nextLetter"
  $0 $nextLetter
  fi
}

cheerleading $1