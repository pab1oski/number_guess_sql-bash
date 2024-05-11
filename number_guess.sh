#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

## Generate a random number

NUMBER=$((1 + RANDOM % 1000))

## Get the username
echo -e "Enter your username:"
read USERNAME

##Check if the username is in the database
QUERY_USERNAME=$($PSQL "SELECT games_played,best_game FROM games WHERE username='$USERNAME'")
##if it is not insert it
if [[ -z $QUERY_USERNAME ]]
then
echo "Welcome, $USERNAME! It looks like this is your first time here."

else
  ## Unwrap the query

  echo "$QUERY_USERNAME" | while IFS='|' read  -r GAMES_PLAYED BEST_GAME
  do
    echo  "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
  done

  
fi

echo "Guess the secret number between 1 and 1000:"

## Start guesing
