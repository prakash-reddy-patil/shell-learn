#!/bin/bash

USERID=$(id -u)

R="\e[31m"         #RED
G="\e[32m"         #GREEn
Y="\e[33m"         #YELLOW
N="\e[0m"          #NO COLOUR

LOGS_FOLDER="var/log/shell-script"
SCRIPT_NAME=$( echo $0 | cut -d "." -f1 )
LOG_FILE="$LOGS_FOLDER/$SCRIPT_NMAE.log"

mkdir -p LOGS_FOLDER
echo "script started executing at : $(date)"

if [ $USERID -ne 0 ]; then
    echo "ERROR:: Please run this script with root privelege"
    exit 1   #failures other than zero

fi


VALIDATION (){    #functions receive inputs through arguments lust like shell scripts argumnts
 
if [ $? -nt o ] ; then 
  
    echo  -e " installing $2......$R is failure $N"
    exit 1
 else 
    echo "Installing $2......$R is SCUCCES $N"
fi
}

 dnf list installed mysql  $>>$LOG_FILE
 # Install if it is not found
 
 if [ $? -ne 0 ]; then 
   dnf install mysql -y 
   VALIDATION $?  "MySQl"
 else 
   echo -e "mysql already exist ... $Y skipping $N"
   
fi

 dnf list installed nginx -y $>>$LOG_FILE

 if [ $? -ne 0 ]; then 
   dnf install Nginx -y 
   VALIDATION $?  "Nginx"
 else 
   echo -e "Nginx already exist ... $Y skipping $N"
fi


dnf list installed python3 -y $>>$LOG_FILE

 if [ $? -ne 0 ]; then 
   dnf install python3 -y 
   VALIDATION $?  "python3"
 else 
   echo -e "python3 already exist ... $Y skipping $N"
fi


