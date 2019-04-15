#!/usr/bin/env bash

### Local Variables

# Sometimes you would want variables to remain localized within a function, that is, they cannot be expanded outside of the scope of the function. Let us see an example where variables are essentially global and the scope of the function does not restrict access to its variable.

function someFunction() {
  argumentGlobal=$1
  echo "This argument is global, $1"
}

someFunction Kostas
echo "This argument is global, $argumentGlobal, since it was set in the function and can be expanded outside of it"

# This may not be desirable for various reasons. To make a variable local, we simply put the local modificator in front of it

echo ""  
echo ""  # just add two blank lines

function someOtherFunction() {
  local argumentLocal=$1
  echo "This argument is local, $1"
}

someOtherFunction Kostas
echo "This argument is local, $argumentLocal, since it was set in the function but cannot be expanded outside of it. It was not echoed out as you surely already have noticed"


#-------------------------------------------------------------------------
