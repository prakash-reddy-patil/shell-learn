#!/bin/bash


USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "ERROR:: Please run this script with root privelege"
    exit 1   #failures other than zero

fi


VALIDATION (){

if [ $? -nt o ] ; then 
  
    echo "EROR:: installing $2 is failure"
    exit 1
 else 
    echo "Installing $2 is SCUCCES"
fi
}

 

dnf install mysql -y 
VALIDATION $?  "MySQl"

dnf install nginx  -y 
VALIDATION $?  "Nginx"

dnf install python3 -y 
VALIDATION $?  "python"


