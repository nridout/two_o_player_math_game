# TwO-O-Player Math Game

A two player math game where players take turns to answer simple math addition problems. A new math question is generated for each turn by picking two numbers between 1 and 20. The player whose turn it is is prompted the question and must answer correctly or lose a life.

## Modules

### Game
* Manages game flow
* Initializes player's turn
* Asks question, accepts answer and validates
* Provides status summary
* Determine when game ends & announces winner

### Players
* Manages Player lives

### Turns
* Manages which player's turn it is

### Question
* Generates question & answer
