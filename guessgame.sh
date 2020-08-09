#!/usr/bin/env bash

match() {
num=$(ls | wc -l)
  if [[ $num -eq $1 ]]; then
    echo 0
  elif [[ $num -lt $1 ]]; then
    echo 1
  else
    echo -1
  fi
}

echo "Guess number of files: "

while true; do
  read guess
  if [[ $(match guess) -eq 0 ]]; then
    echo "Congrats you are right!"
    break
  elif [[ $(match guess) -eq 1 ]]; then
    echo "too high, try again: "
  else
    echo "too low, try again: "
  fi
done
