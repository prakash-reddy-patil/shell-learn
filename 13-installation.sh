#!/bin/bash


USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "ERROR:: Please run this script with root privelege"
    exit 1   #failures other than zero

fi


dnf install mysql -y 
if [ $? -nt o ] ; then 
  
    echo "EROR:: installing MYSQl is failure"
    exit 1
 else 
    echo "Installing MYSQL is SCUCCES"
fi


 dnf install nginx -y 

if [ $? -nt 0 ] ; then 
 
    echo "EROR:: installing NGINX is failure"
    exit 1
 else 
    echo "Installing NGINX is SCUCCES"
fi


dnf install python3  -y 

if [ $? -nt o ] ; then 
  
    echo "EROR:: installing PHYTHON is failure"
    exit 1
 else 
    echo "Installing PHYTHON is SCUCCES"
fi