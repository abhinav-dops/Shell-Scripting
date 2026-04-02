#!/bin/bash

# This is practice script

<< comment
multi line comment write anything
here 
comment

echo "enter the name:"
read name

echo name is $name
echo he is ${name}
echo ${name^^}
echo ${#name}
echo ${name/ran/dev}
echo "$date"

echo "Name is $name, and date is $(date)"

read -p "Enter username: " username

echo "you entered : $username"


