#!/usr/bin/env bash

### Select loop

# The select loop is used whenever you need to write a script which requires some menus to select from

# select variable in list
# do 
#   command1
#   command2
#   command3
# done

#-------------------------------------------------------------------------

# Example: uncomment to run example

# select name in Mark Tom John Frank Nick Bob
# do 
#   echo "$name selected"             
# done	                            

# you will see 
# 1) Mark
# 2) Tom
# 3) John
# 4) Frank
# 5) Nick
# 6) Bob
# #?      <---- here you will need to specify a number. If for example you select 4, then you will see "mary selected"

### NOTE: As it stands now, the code does not offer much; you may already have noticed that you can reselect a name from the names list without terminating the code and without taking further actions. Therefore, usually the select loop is run with a case block inside it to lead to further actions. Let's expand the following code and run something meaningfull

sum=0
select name in Mark Tom John Frank Nick Bob 
do 
  case $name in
    Mark | Frank) 
      echo "$name selected"
      echo "$name was one of the killers"
      sum=$(($sum + 1))
      if [ $sum -ne 2 ]
      then
        echo "You guessed correct. You arrest him. You found ONE of the killers, you win... this time. Who is the other one? Play again!"
        continue
      else
        echo "You guessed correct. You found BOTH of the killers. You win!"
        break
      fi
    ;;
    Tom | Nick | Bob) 
      echo "$name selected"
      echo "$name was not one of the killers"
      echo "You guessed wrong. Game over!"
      break 
    ;;
    John) 
      echo "...Really? You want John to be selected?? John was the victim!!"
      echo "You guessed wrong. Game over!"
      break
    ;;
    *)
      echo "Error: Unknown suspect selected. Please provide a number between 1 to 6"
      break
    ;;
  esac
done	

### NOTE: Above we used continue and break. When you place continue, you see that the loop keeps repeating while when break the loop breaks. In fact, it not just breaks the if block, but also the case block and the select loop altogether!



#-------------------------------------------------------------------------
