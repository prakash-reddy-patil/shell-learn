#!/bin/bash

echo "please enther the number :"

read number

if [ $(($number % 2 )) -eq 0 ]; then 

  echo "the given $number is even"

  else "the given $number is odd"

fi
    