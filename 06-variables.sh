#!/bin/bash

#date 
START_DATE=$(date +%s)
#echo "date and time is:$START_DATE"

sleep 10

END_DATE=$(date +%s)
#echo "date and time after processser sleep is:$END_DATE"

total_time=$((END_DATE-START_DATE))
echo "the total time difference after processer sleep is:$total_time"



#Siva notes
#START_TIME=$(date +%s)

#sleep 10

#END_TIME=$(date +%s)

#TOTAL_TIME=$(($END_TIME-$START_TIME))

#echo "Script executed in: $TOTAL_TIME Seconds"