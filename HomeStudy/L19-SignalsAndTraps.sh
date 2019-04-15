#!/usr/bin/env bash

### Signals and Traps 

# Let us first understand what a signal can do 

trap "echo Exit signal is detected; exit" SIGINT 
# or alternatively 
# trap "echo Exit signal is detected; exit" 9 # you can add more signals here

echo "pid is $$"           # You use $$ to print the pid of the script itself
while (( count < 1 ))
do
  sleep 8
  (( count ++ ))
  echo $count
done
#exit 0


### NOTE: While the script is running, you can:
  #  - press Control + C ( Command + C ) to terminate the script. When you do this you give a signal to the script which is called SIGINT, interruption signal. 
  #  - press Control + Z ( Command + Z ) to pause the script. When you do this you give a signal to the script which is called SIGTSTP, suspend signal.
  #  - To see more signals, you can run in a terminal ${man signal}

  # If you open 2 terminals, one to run the script and another one to place the command ${kill -9 <pid>} where -9 means to send a SIGKILL (kill the process) and <pid> is the process the script is running on, you will kill the script.

  # As you can see there are several stuff that can happen while a script is running and it would be good if there is a way to cater for peculiar situations or unexpected behavior where we would like to intervene. This can be done by traps. The trap command captures an interrupt signal and then proceeds to 'clean' it up within the script.

  # The above placed trap captures the signal SIGINT and executes the echo command with its message, afterwards it exits. Of course you could place more code in the double quotes there 

  # A trap can NEVER capture the SIGKILL and SIGSTOP signal
#-------------------------------------------------------------------------

