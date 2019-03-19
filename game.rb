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

    # turns keeps track of the current player
    current_player = @player1

    # Initialize a new question
    question = Question.new
    question.new_question

    puts "#{current_player.name}: #{question.question}"

    # Accept user answer & convert to number
    print "> "
    answer = $stdin.gets.chomp.to_i
    # answer = 4
    # puts answer

    # Validate Answer
    if answer == question.answer
      puts "#{current_player.name}: YES! You are correct"
    else
      puts "#{current_player.name}: Seriously? No!"
      current_player.lose_life
    end

    # Output status summary
    puts "P1: #{@player1.lives}/3 vs #{@player2.lives}/3"
    puts "----- NEW TURN -----"

  end
end


#     while (!game_over?)
#       #Whose turn (Player 1 or Player 2)
#       # turn = ??

#       # Game ends when all lives are lost
#       if current_player player_lost?
#         # Game over
#         # Announce who won
#       else
#         # New turn
#       end
#     end
#   end
# end





