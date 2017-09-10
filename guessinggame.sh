#!/usr/bin/env bash
# File: guessinggame.sh 

echo "Guess how many files are in the current directory"
read guess 

echo "you entered: $guess" 

count=(*)
count=${#count[@]}
let diff=$guess-$count


if [[ $diff -eq 0 ]]
then
    echo "Congratulations - you guessed it!"
else
    
    while [[ $diff -ne 0 ]]
    do 

        if [[ $diff -lt 0 ]]
        then
            echo "Too low; have another guess."
            read guess
            let diff=$guess-$count

        else [[ $diff -gt 0 ]]
            echo "Too high; have another guess."
            read guess
            let diff=$guess-$count
        fi
    done
echo "Congratulations - you guessed it!"
fi 
