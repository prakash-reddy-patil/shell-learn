#!/bin/bash

#date 
VAR_DATE=$(date +%s)
echo "date and time is:$VAR_DATE"

sleep 10

VAR_DATE2=$(date +%s)
echo "date and time after processser sleep is:$VAR_DATE2"