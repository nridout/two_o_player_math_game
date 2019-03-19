require_relative 'player'

class Game

  # Initialize Players
  def initialize
    player1 = Player.new('Player 1')
    player2 = Player.new('Player 2')
  end

  def play
    while (!game_over?)
      #Whose turn (Player 1 or Player 2)
      # turn = ??
      current_player = player1 # need to handle turns
      question = "What does 5 plus 3 equal?"
      answer = "8"

      puts "#{current_player.name}: #{question}"

      # ask for CL input ??

      # accept input from command line = gets.chomp
      answer = gets.chomp

      # validate if the answer is_correct?
      def is_correct?
        answer == 8
      end

      # chose response depending on correctness of answer
      if answer is_correct?
        puts "#{current_player.name}: Seriously? No!"
      else
        puts "#{current_player.name}: YES! You are correct"
      end

      # Output status summary
      puts "P1: #{player1.lives}/3 vs #{player2.lives}/3"

      # Game ends when all lives are lost
      if current_player player_lost?
        # Game over
        # Announce who won
      else
        # New turn
      end
    end
  end
end





