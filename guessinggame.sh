#!/usr/bin/env bash
# File: guessinggame.sh

function hello {
     echo "******** Guessing Game ********"
     echo "Hello, can you guess how many files are in current directory?"
     echo "Type in an integer and then press Enter:"
}

GAMEOVER=0
ANSWER=`find . -maxdepth 1 -type f | wc -l`

hello

while [ "${GAMEOVER}" -eq 0 ]
do
read GUESS


if  ! [[ -n "${GUESS}" && "${GUESS}" -eq "${GUESS}" ]] 2> /dev/null
then
    echo "Sorry, I did not understand that."
    echo "Type in an integer and then press Enter:"
    continue
fi

if [[ "${GUESS}" -gt "${ANSWER}" ]] 
then
    echo "Too high, try a lower number.."
elif [[ "${GUESS}" -lt "${ANSWER}" ]]
then
    echo "Too low, try a higher number.."	
else 
    echo "Congratulations! Correct, there are " ${ANSWER} " files in current directory"
    echo "Bye!"
    GAMEOVER=1
fi
done
