#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=<database_name> -t --no-align -c"

## Generate a random number

NUMBER=$((1 + RANDOM % 1000))

## Get the username
echo -e "Enter your username:"
read USERNAME

##Check if the username is in the database
QUERY_USERNAME=$($PSQL "")
##if it is not insert it
if [[ -z $QUERY_USERNAME ]]
then
## Insert it
else
  ## Unwrap the query

  echo -e "\nWelcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

echo uess the secret number between 1 and 1000:

## Start guesing
