class Turn
  attr_reader :current_player

  def initialize(players)
    @players = players
    @current_turn = 1
    @current_player = @players[0]
  end

  def next_turn
    @current_player = @players[@current_turn]
    increment_turn
  end

  # Increment the turn
  def increment_turn
    if @current_turn == 0
      @current_turn = 1
    else
      @current_turn = 0
    end
  end
end

# turn = Turn.new(['player1', 'player2'])
# p turn