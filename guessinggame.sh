#!/usr/bin/env bash
# File: guessinggame.sh

GAMEOVER=0

echo "******** Guessing Game ********"
echo "Hello, can you guess how many files are in current directory?"
echo "Type in an integer and then press Enter:"

ANSWER=`find . -maxdepth 1 -type f | wc -l`

while [ $GAMEOVER -eq 0 ] 
do
read GUESS

if ! [ "$GUESS" -eq "$GUESS" ] 2> /dev/null
then
    echo "Sorry, I did not understand that."
    echo "Type in an integer and then press Enter:"
    continue 
fi

if [ "$GUESS" -gt "$ANSWER" ]; then
       echo "Not quite, try smaller number.."
elif [ "$GUESS" -lt "$ANSWER" ]; then
       echo "Not quite, try a larger number.."	
else 
       echo "Horray! Correct, there are " $ANSWER " files in current directory"
       echo "Bye!"
       GAMEOVER=1
fi
done
