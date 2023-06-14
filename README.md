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

 ## Methods

```ruby
y = Yahtzee.new

y.start
```

## Dev log

TODO: 
- Make a random number generator (one that probably needs to be in a seperate file)
    - If it does, you'll probs need a function. Not a static class
- display numbers, then refactor into pictures of dice
- add the ability to hold onto your dice (different colours?)
- make a new edited page for logging where you want your score to go (after 3 rolls)
- Multiple players


11 Jun - Spend a bit of time developing this 2.0 version of the yahtzee app, so far we have some visuals and the start of some dynamic layout. 

Next on the agenda is getting random numbers to appear on the screen, this may take some research into better randomisation methods

14 Jun - Maybe use vercel to deploy
