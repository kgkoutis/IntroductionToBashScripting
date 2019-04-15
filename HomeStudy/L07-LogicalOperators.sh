#!/usr/bin/env bash

### Logical Operators

# AND operation

age=25

if [ "$age" -gt 18 ] && [ "$age" -lt 30 ]
then
  echo "valid age"
else
  echo "age not valid"
fi

# you can write it also as follows with the -a flag ("and") or with double square brackets

if [ "$age" -gt 18 -a "$age" -lt 30 ]
then
  echo "again valid age"
else
  echo "again age not valid"
fi

if [[ "$age" -gt 18 && "$age" -lt 30 ]]
then
  echo "yet again valid age"
else
  echo "yet again age not valid"
fi

# OR operator 

if [ "$age" -gt 18 ] || [ "$age" -lt 30 ]
then
  echo "valid age"
else
  echo "age not valid"
fi

# you can write it also as follows with the -o flag ("or") or with double square brackets

if [ "$age" -gt 18 -o "$age" -lt 30 ]
then
  echo "again valid age"
else
  echo "again age not valid"
fi

if [[ "$age" -gt 18 || "$age" -lt 30 ]]
then
  echo "yet again valid age"
else
  echo "yet again age not valid"
fi



#### --------------------------------------------------------------------------------
