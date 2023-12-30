#!/bin/bash
DATE=$(date +%F)
SCRIPT_NAME=$0
LOGFILE=?tmp/$SCRIPT_NAME-$DATE.log
VALIDATE(){
    #$1 is argument you give
    if [ $1 -ne 0 ]
    then
        echo "Installion $2 Failure"
        exit 1
    else
        echo "Installation $2 Success"
    fi
}



NUM=$(id -u)
if [ $NUM -ne 0 ]
then
    echo "Error: you are not root user."
    exit 1
fi

yum install mysql -y &>>$LOGFILE
VALIDATE $? mysql
yum install postfix -y &>>$LOGFILE
VALIDATE $? postfix