#!/bin/bash
DATE=$(date +%F)
SCRIPT_NAME=$0
LOGFILE=/tmp/$SCRIPT_NAME-$DATE.log
VALIDATE(){
    #$1 is argument you give
    if [ $1 -ne 0 ]
    then
        echo "Installion $2 Failure"
        #exit 1
    else
        echo "Installation $2 Success"
    fi
}



NUM=$(id -u)
if [ $NUM -ne 0 ]
then
    echo "Error: you are not root user."
    #exit 1
fi

PACKAGES=("nginx" "postfix" "nosql")

for i in "${PACKAGES[@]}"
do
    rpm -q $i
    if [ $? -e 0 ]
        echo "$i is already installed"
    else
        echo "$i is not installed"
        echo "procceding to installing"
        yum install $i -y &>>LOGFILE
        VALIDATE $? $i
    fi
done
