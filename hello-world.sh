#!/bin/bash
DATE=$(date)
echo "this script is running at a time of: $DATE"
echo "hi, my name is tharun"
echo "im going to be master in devops"
echo "enter your numbers"
PERSONS=("THARUN" "UDAY" "RITHWIN")
for (( i=0; i<=2; i++))
do 
    echo "${PERSONS[i]}"
done