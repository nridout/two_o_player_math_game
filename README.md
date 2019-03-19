# TwO-O-Player Math Game

A two player math game where players take turns to answer simple math addition problems. A new math question is generated for each turn by picking two numbers between 1 and 20. The player whose turn it is is prompted the question and must answer correctly or lose a life.

## Modules

### Math Game
- Initialize Players
- Whose turn (Player 1 or Player 2)
- While there are still lives, continue game
- Output a new "Question"
- Accept input from player
- Outputs new scores for each player at end of every turn
- Game ends when all lives are lost
- At the end, announces who won

### Players
- (Initialize) name
- (Initialize) Players start with 3 lives
- Def - manage lives => Lose a life if question is mis-answered
- Def - status => num of lives left out of total lives
- Def - player lost => once no lives left

### Turns
- initialize turn
- Provides correct / incorrect varification for questions?

### Question
- Generates question & answer
- Random numbers
