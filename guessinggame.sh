#!/usr/bin/env bash
# File: assignment_oliver.sh 

echo "Guess how many files are in the current directory"
read guess 
echo "you entered: $guess"

count=(*)
count=${#count[@]}

let diff=$guess-$count

if [[ $diff -lt 0 ]]
    then
        echo "Too low; try again"
    elif [[ $diff -gt 0 ]]
    then
        echo "Too high; try again"
    elif [[ $diff -eq 0 ]]
    then 
        echo "Congratulations! You guessed correctly; there are $count files in the current directory!"
fi 
