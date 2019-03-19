require_relative 'player'
require_relative 'question'

class Game

  # Initialize Players
  def initialize
    @player1 = Player.new('Player 1')
    @player2 = Player.new('Player 2')
  end

  # Handles the game flow
  def play
    while (!game_over?)

      # Initiate new turn
      puts "----- NEW TURN -----"
      # **TODO** turns keeps track of the current player
      current_player = @player1

      # Initialize a new question
      question = Question.new
      question.new_question
      puts "#{current_player.name}: #{question.question}"

      # Accept user answer & convert to number
      print "> "
      answer = $stdin.gets.chomp.to_i
      sleep 0.5

      # Validate Answer
      if answer == question.answer
        puts "#{current_player.name}: YES! You are correct"
      else
        puts "#{current_player.name}: Seriously? No!"
        current_player.lose_life
      end
      sleep 0.5

      # Output status summary
      puts "P1: #{@player1.lives}/3 vs #{@player2.lives}/3"
      sleep 0.75
    end

    # Game is over, announce winner
    # **TODO** - Determine winner
    puts "Player 1 wins with a score of 1/3"
    puts "----- GAME OVER -----"
  end

  # Game ends when all lives are lost
  def game_over?
    @player1.loser? || @player2.loser?
  end
end





