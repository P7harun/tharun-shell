#!/bin/bash
NUM=$(id -u)
if[$NUM -ne 0]
then
    echo "you are not root user"
    exit 1
else
    echo "you are root user"
    yum install nginx -y
fi