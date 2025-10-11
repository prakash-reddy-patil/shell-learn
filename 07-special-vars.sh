#!/bin/bash


# @,* are used for to print all arguments passes to the script 

echo "the argument passed to the script is:$@"
echo "the argument passed to the script is:$*"
echo "the script name is:$0"
echo "the user who is running the script is:$USER"
echo "current directoty os the script:$PWD"
echo "home directory of user is:$HOME"
echo "process instant id (PID) of the process is:$$"
echo "PID of last command in back ground running is:$!"
