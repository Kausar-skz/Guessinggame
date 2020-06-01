#!/usr/bin/env bash
# File: guessinggame.sh


function guess(){
  ans=$(ls -l |grep "^-"|wc -l)
  while true;
  do
    echo "guess the number of files in your directory"
    read x
    if [[ $x -gt $ans ]]
    then
      echo " Too high than the actual number of flies"
    elif [[ $x -lt $ans ]]
    then 
      echo "Too low than the actual number files"
    else
      echo "Congratulations! You've guessed the correct number of files"
    break;
    fi
  done
}
guess
