#!/usr/bin/env bash
# File: assignment_oliver.sh 

echo "Guess how many files are in the current directory"
read guess 

count=(*)
count=${#count[@]}
let diff=$guess-$count
echo "you entered: $guess"
if [[ $diff -lt 0 ]]
then
    echo "Too low; try again"
elif [[ $diff -gt 0 ]]
then
    echo "Too high; try again"
else
    echo "Congratulations, you guessed it!"
fi 
