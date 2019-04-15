#!/usr/bin/env bash

### Assignment: Complete the script to create a basket of 4 fruit: the "fruits" are to be collected when the script is being initiated from the command line and then store it in the "basket". Then they should be ordered in accordance to their name (e.g. apple comes first, banana goes second) and printed accordingly to the user.

basket=($1 $2 $3 $4)
n=${#basket[@]}
for ((j = 0; j < $(($n - 1)); j++)); do
	for ((i = 0; i < $(($n - j - 1)); i++)); do
		k=$(($i + 1))
		if [ "${basket[$i]}" -gt "${basket[$k]}" ]; then
			temp="${basket[$(($i + 1))]}"
			basket[$(($i + 1))]=${basket[$i]}
			basket[$i]=$temp
		fi
	done
done
echo ${basket[@]}
