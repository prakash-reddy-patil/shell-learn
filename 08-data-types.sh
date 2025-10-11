#!/bin/bash/

#everything in the shell is considered as string

num1=100
num2=200

sum=$((num1+num2))

echo "the addition of two numbers is:$sum"


LEADERS=("praksh"  "trump"  "modi"  "putin")

echo "All leaders are present in array is:${LEADERS[@]}"
echo "the first leader in array is:${LEADERS[0]}"
echo "the third leader in array is:${LEADERS[2]}"

