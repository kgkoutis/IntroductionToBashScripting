#!/usr/bin/env bash

### String manipulation 

# First we present the expression, then its explanation and below its example

# Assignment of variables

# 1) ${variable="value"}
# Explanation: Assign value to variable if variable is not already set. Value will be returned.  

# Example
echo ${variable="value"} # echoes out "value", since it the value of the string is returned and it has not been set before

variable="otherValue"
echo ${variable="value"} # echoes out "otherValue", since it the value of the string is returned and it has already been set before 

#-------------------------------------------------------------------------

# 2) ${variable-value}
# Explanation: If variable not set, return value, else variable

# Example 
echo "${myName-kostas}"             # echoes out kostas
myName=kostas
echo "${myName-mark}"               # echoes out kostas

#-------------------------------------------------------------------------

# 3) ${variable:-value}
# Explanation: If variable not set or empty, return value, else variable

# Example 
myName=
echo "${myName:-kostas}"            # echoes out kostas
myName=kostas
echo "${myName:-mark}"              # echoes out kostas

#-------------------------------------------------------------------------

# 4) ${variable+value}
# Explanation: If variable set, return value, else null string

# Example 
myName=mark
echo "${myName+kostas}"             # echoes out kostas (variable is set)
echo "${myName2+mark}"              # echoes out null (variable is not set)

#-------------------------------------------------------------------------

# 5) ${variable:+value}
# Explanation: If variable set and not empty, return value, else null string

# Example 
myName=
echo "${myName:+kostas}"             # echoes out null (variable is set, but empty)
echo "${myName2:+mark}"              # echoes out null (variable is not set)

#-------------------------------------------------------------------------

# 6) ${variable:position:length}
# Explanation: Extract length characters from variable starting at position

# Example 
myName='kostas'
echo "${myName:0:3}"                 # echoes out "kos"

#-------------------------------------------------------------------------

# 7) ${#variable}
# Explanation: String length of variable

# Example 
myName='kostas'
echo "${#myName}"                 # echoes out 6

#-------------------------------------------------------------------------

# 8) : ${variable="value"}
# Explanation: Couple with : no operation if return value is to be discarded (i.e, if what is written for whatever reason is going to be executed but cause the script to fail).	

# Example
n=1
# $(($n + 1))    # This will not work because there is not precedent command before the arithmetic execution and bash tries to interpret the expression as a command!

: $(($n + 1))    # This will not work because ":" is the shell equivalent of a "NOP" (no op, a do-nothing operation). It may be considered a synonym for the shell builtin true. The ":" command is itself a Bash builtin, and its exit status is true (0).

###NOTE: Two prominent (but not the only ones) uses of ":" command can be seen below

# case A

# if condition
# then :   # Do nothing and branch ahead - remember : is truthy
# else     # Or else ...
#   take-some-action
# fi

# case B
#: > data.xxx   # File "data.xxx" now empty.    

# In combination with the > redirection operator, truncates a file to zero length, without changing its permissions. If the file did not previously exist, creates it.

#-------------------------------------------------------------------------

### NOTE: bash shell has the following Normal Pattern Language, already built-in

# Normal pattern language

# |   Pattern  |   Description
# |      *	   | Matches any string, including the null string (empty string)
# |      ?     | Matches any single character
# |      X	   | Matches the character X which can be any character that has no special meaning
# |     \X	   | Matches the character X, where the character's special meaning is stripped by the backslash
# |     \\     |	Matches a backslash
# |     […]    |	Defines a pattern bracket expression (see below). Matches any of the enclosed characters at this position.

### NOTE: You can expand the normal pattern language by "globbing" (check wikipedia) with the comand

shopt -s extglob	    # This enables extended globbing shell

# If the extglob shell option is enabled using the shopt builtin, several extended pattern matching operators are recognized.  In  the  following description, a pattern-list is a list of one or more patterns separated by a |.  Composite patterns may be formed using  one  or  more  of  the following sub-patterns:

#   |   ?(pattern-list)
#   |          Matches zero or one occurrence of the given patterns
#   |   *(pattern-list)
#   |          Matches zero or more occurrences of the given patterns
#   |   +(pattern-list)
#   |          Matches one or more occurrences of the given patterns
#   |   @(pattern-list)
#   |          Matches one of the given patterns
#   |   !(pattern-list)
#   |          Matches anything except one of the given patterns


# 3) ${someString#matchParameter}
# Explanation: Delete shortest match of matchParameter from front of someString

# Example 

someString="000012000"
echo "${someString#+(0)}"     # echoes out 00012000

#-------------------------------------------------------------------------

# 9) ${someString##matchParameter}
# Explanation: Delete longest match of matchParameter from front of someString

# Example 
someString="000012000"
echo "${someString##+(0)}"     # echoes out 12000

#-------------------------------------------------------------------------

# 10) ${someString%matchParameter}
# Explanation: Delete longest match of matchParameter from back of someString

# Example 
someString="000012000"
echo "${someString%+(0)}"     # echoes out 00001200

#-------------------------------------------------------------------------

# 11) ${someString%%matchParameter}
# Explanation: Delete longest match of matchParameter from back of someString

# Example 
someString="000012/000"
echo "${someString%%+(/*)}"     # echoes out 000012

#-------------------------------------------------------------------------

# 12) ${someString/matchParameter/replacement}
# Explanation: Replace first match of matchParameter with replacement from someString	

# Example 
someString="000012000"
echo "${someString/0/3}"     # echoes out 30001200

#-------------------------------------------------------------------------

# 13) ${someString//matchParameter/replacement}
# Explanation: Replace all matches of matchParameter with replacement from someString	

# Example 
someString="000012000"
echo "${someString//0/3}"     # echoes out 333312333

#-------------------------------------------------------------------------

# 14) ${someString/#matchParameter/replacement}
# Explanation: If matchParameter matches front of someString replace with replacement

# Example 
someString="000012000"
someOtherString="4000012000"
echo "${someString/#00/31}"          # echoes out 310012000
echo "${someOtherString/#00/31}"     # echoes out 4000012000

#-------------------------------------------------------------------------

# 15) ${someString/%matchParameter/replacement}
# Explanation: If matchParameter matches end of someString replace with replacement

# Example 
someString="000012000"
someOtherString="0000120004"
echo "${someString/%00/31}"          # echoes out 000012031
echo "${someOtherString/%00/31}"     # echoes out 0000120004

