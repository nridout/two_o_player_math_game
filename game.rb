require_relative 'player'
require_relative 'question'
require_relative 'turn'

class Game

  # Initialize Players
  def initialize
    player1 = Player.new('Player 1')
    player2 = Player.new('Player 2')
    @players = [player1, player2]
    @current_turn = Turn.new([player1, player2])
  end

  # Handles the game flow
  def play
    while (!game_over?)

      # Initiate new turn
      puts "\n----- NEW TURN -----"

      # Turns keeps track of the current player
      current_player = @current_turn.current_player

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
      puts "P1: #{@players[0].lives}/3 vs P2: #{@players[1].lives}/3"
      sleep 0.75

      # If the game isn't over, initate a new turn
      @current_turn.next_turn
    end

    # Game is over, announce winner
    winner = select_winner
    puts "#{winner.name} wins with a score of #{winner.lives}/3"
    puts "\n----- GAME OVER -----"
  end

  # Game ends when all lives are lost
  def game_over?
    @players[0].loser? || @players[1].loser?
  end

  # Winner is the player with lives left
  def select_winner
    if @players[0].lives > 0
      @players = @players[0]
    else
      @players = @players[1]
    end
  end
end
