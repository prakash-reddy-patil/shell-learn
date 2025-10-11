#!/bin/bash

#date 
START_DATE=$(date +%s)
#echo "date and time is:$START_DATE"

sleep 10

END_DATE=$(date +%s)
#echo "date and time after processser sleep is:$END_DATE"
Total_Time=$((START_DATE-END_DATE))
echo "the total time difference after processer sleep is:$Total_time"