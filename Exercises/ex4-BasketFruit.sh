#!/usr/bin/env bash

### Assignment: Complete the script to create a basket of 4 fruit: the "fruits" are to be collected when the script is being initiated from the command line and then store it in the "basket". Then they should be ordered in accordance to their name (e.g. apple comes first, banana goes second) and printed accordingly to the user.

basket=                                                        # what type of data should this be? What values should it store? Where do the values come from?
n=${#basket[@]}                                                # how would you find the number of fruits?
for ((j = 0; j < $(($n - 1)); j++)); do
	for ((i = 0; i < $(($n - j - 1)); i++)); do
		k=$(($i + 1))
		if [  ]; then                                              # How should you compare iteratively the fruits?
			temp=                                                    # This is the procedure of swapping values
          =                                                    # You need a temporary variable (temp) to hold the values 
          =$temp                                               # How should you implement it in your code?
		fi
	done
done
echo                                                           # Echo the results


