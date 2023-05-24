# yahtzee

 _______
|*     *|
|   *   |
|*     *|
 -------

 _______
|*      |
|   *   |
|      *|
 ------- 

 _______
|*      |
|   *   |
|      *|
 ------- 

 _______
|*      |
|   *   |
|      *|
 ------- 

## User Stories

Round to of making this, halfway through the full course. Full stack website

As a player
So that I can tell apart me from my opponent
I want to enter my name before playing

As a player 
So that I can start my turn 
I want to be able to throw the dice

As a player 
So that I can hold on to good dice
I want to tick the dice I want to hold on to

As a player
So that I can get a good score
I want to see a score card with plenty of information

As a player 
So that I can get play a round
I want to roll the dice three times

As a player
So that I can play against an opponent
I want to take turns playing a round

As a player 
So that I can play a full game
I want to log my score on the score card with the corresponding values

As a player
So that I can gain a good score
I want to gain bonus points for scoring top half

As a player 
So that when I win
I want to log my high score on a database

## Database

one table for highscores
one MAYBE to save your progress

highscores 

 id | player_name | score | bonus +35 | yahtzee +50
 ---+-------------+-------+-----------+------------
 int| string      | int   | bool      | bool