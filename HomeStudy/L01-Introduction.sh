#!/usr/bin/env bash

### Introduction

# this is a comment
# Permission denied --> chmod +x <filename>

echo "Hello World"

echo $BASH
echo $BASH_VERSION
echo $HOME
echo $PWD

#system variables with all-capitals

name=Mark
# 10val=10  # You should NOT start a variable with a number!!
val=10
echo The name is ${name}
echo value $10val # it will print 0val since "$1" is not consider a variable
echo val ${val}
