#!/usr/bin/env bash

### Append output to the end of text file

# We start with the same code that we had before but a little bit changed

### To add a right to read, write or execute a file you can press
# chmod +r (or +w, or +x) $file_name
### To remove a right to read, write or execute a file you can press
# chmod -r (or -w, or -x) $file_name

echo -e "Enter the name of the file: \c"
read file_name

if [ -f $file_name ]; then 
	if [ -w $file_name ]
  then
    echo "Type some text data. To quit press ctrl+d"
    cat >> $file_name # > will overwrite the file, >> will append the content to the file
  else
    echo "The file does not have write permissions"
  fi
else
	echo "$file_name file not found!"
fi

# Check the file you will find your input there 

#### -----------------------------------------------------------------------------
