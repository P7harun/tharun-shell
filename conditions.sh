#!/bin/bash
NUM=$(id -u)
if [$NUM -gt 0]
then
    echo "you are not root user"
else
    echo "you are root user"
    yum install nginx -y
fi