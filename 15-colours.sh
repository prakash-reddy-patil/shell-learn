#!/bin/bash


USERID=$(id -u)

R="\e[31m"         #RED
G="\e[32m"         #GREEn
Y="\e[33m"         #YELLOW
N="\e[0m"          #NO COLOUR


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

 dnf list installed mysql  # Install if it is not found

 if [ $? -ne 0 ]; then 
   dnf install mysql -y 
   VALIDATION $?  "MySQl"
 else 
   echo -e "mysql already exist ... $Y skipping $N"
   
fi

 dnf list installed nginx -y

 if [ $? -ne 0 ]; then 
   dnf install Nginx -y 
   VALIDATION $?  "Nginx"
 else 
   echo -e "Nginx already exist ... $Y skipping $N"
fi


dnf list installed python3 -y

 if [ $? -ne 0 ]; then 
   dnf install python3 -y 
   VALIDATION $?  "python3"
 else 
   echo -e "python3 already exist ... $Y skipping $N"
fi
