#!/bin/bash
echo "Enter your username: "
# Welcome Message
read USER

# Random Number Generator
RANDOM_NUMBER=$[ $RANDOM % 1000 + 1]
#echo $RANDOM_NUMBER

#PSQL
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

#Username Check
#PSQL USER CHECK
USERCHECK=$($PSQL "SELECT name FROM player WHERE name='$USER'");

if [[ -z $USERCHECK ]]
  #If new Username
  then
    INSERT=$($PSQL "INSERT INTO player(name) VALUES('$USER')");
    PLAYER_ID=$($PSQL "SELECT id FROM player WHERE name='$USER'");
    echo "Welcome, $USER! It looks like this is your first time here."
    #Else Show User statistic
  else
    PLAYER_ID=$($PSQL "SELECT id FROM player WHERE name='$USER'");
    TIMES_PLAYED=$($PSQL "SELECT COUNT(tries) FROM stats WHERE player_id=$PLAYER_ID");
    BEST_GAME=$($PSQL "SELECT MIN(tries) FROM stats WHERE player_id=$PLAYER_ID");
    echo "Welcome back, $USER! You have played $TIMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi  # Game
echo "Guess the secret number between 1 and 1000:"
# Guess number + Counter
COUNTER=0
while [[ $GUESS != $RANDOM_NUMBER ]]
do
  let COUNTER=COUNTER+1
  read GUESS
  # 0. Not an Integer -> Guess number
  if ! [[ $GUESS =~ ^[0-9]+$ ]]
    then
      echo "GUESS: $GUESS"
      echo "That is not an integer, guess again:"
  # 1. Right  -> ende
  elif [[ $GUESS == $RANDOM_NUMBER ]]
    then
      echo "You guessed it in $COUNTER tries. The secret number was $RANDOM_NUMBER. Nice job!"
      INSERT=$($PSQL "INSERT INTO stats(player_id, tries) VALUES($PLAYER_ID, $COUNTER)");
      exit
  # 2. Higher -> Guess number
  elif [[ $GUESS > $RANDOM_NUMBER ]]
    then
      echo "It's lower than that, guess again:"
  # 3. Lower  -> Guess number
  elif [[ $GUESS < $RANDOM_NUMBER ]]
    then
      echo "It's higher than that, guess again:"
  else
    echo "ERROR"
  fi
done

# ende Game
