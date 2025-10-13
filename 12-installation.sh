#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "ERROR:: Please run this script with root privelege"


fi

 dnf install nginx -y 

if [ $? -nt 0 ] ; then 
 
    echo "EROR:: installing MYSQl is failure"
 else 
    echo "Installing MYSQL is SCUCCES"
fi