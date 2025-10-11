#!/bin/bash/

#everything in the shell is considered as string

num1=100
num2=200

sum=$((num1+num2))

echo "the addition of two numbers is:$sum"



# Size = 4, Max index = 3
LEADERS=("modi" "trump" "patil" "putin")

echo "All leaders are present in array is:${LEADERS[@]}"

echo "the first leader in array is:${LEADERS[0]}"
echo "the third leader in array is:${LEADERS[2]}"






: <<'END_COMMENT'
# everything in shell is considerd as string
NUMBER1=100
NUMBER2=200
NAME=DevOps

SUM=$(($NUMBER1+$NUMBER2+$NAME))

echo "SUM is: ${SUM}"

# Size = 4, Max index = 3
LEADERS=("Modi" "Putin" "Trudo" "Trump")

echo "All leaders: ${LEADERS[@]}"
echo "First Leader: ${LEADERS[0]}"
echo "First Leader: ${LEADERS[10]}" 
'END_COMMENT'