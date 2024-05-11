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
## Create a row for the user
INSERT_USER=$($PSQL "INSERT INTO games(username,games_played,best_game) VALUES('$USERNAME',0,0)")
echo "Welcome, $USERNAME! It looks like this is your first time here."

else
  ## Unwrap the query
  echo "$QUERY_USERNAME" | while IFS='|' read  -r GAMES_PLAYED BEST_GAME
  do
    echo  "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
  done

  
fi

echo "Guess the secret number between 1 and 1000:"
flag=false
COUNT=1;

while !flag
do
read PLAYER_NUMBER

## Check if it is an integer

## Choose a case
if [[ $PLAYER_NUMBER < $NUMBER ]]
then
  echo "It's higher than that, guess again:"
  $COUNT++;
else if [[ $PLAYER_NUMBER > $NUMBER ]]
then
  echo "It's lower than that, guess again:"
  $COUNT++;
else if [[ $PLAYER_NUMBER == $NUMBER ]]
 echo  "You guessed it in $COUNT tries. The secret number was $NUMNER. Nice job!"
 flag=true
 fi


done

## Check if it was the best game
if [[$COUNT < $BEST_GAME]]
then
  BEST_GAME=$COUNT
fi
$GAMES_PLAYED++;
## Save it in the database
  SAVE_QUERY=$($PSQL "UPDATE games SET games_played=$GAMES_PLAYED,best_game=$BEST_GAME WHERE username='$USERNAME'") 
