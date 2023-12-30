#!/bin/bash
VALIDATE(){
    #$1 is argument you give
    if [ $1 -name 0 ]
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

yum install mysql -y
VALIDATE $? mysql
yum install postfix -y
VALIDATE $? postfix