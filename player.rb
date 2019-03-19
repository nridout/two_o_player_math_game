class Player
  attr_reader :name
  attr_reader :lives

  # Each player starts with 3 lives
  def initialize(name)
    @name = name
    @lives = 3
  end

  # manage lives left (lose life if question is mis-answered)
  def lose_life
    @lives -= 1
  end

  #player lost => once no lives left
  def player_lost?
    @lives = 0
    puts "#{name} lost"
  end
end


# TESTS

# player1 = Player.new('Player 1')
# p player1
# player1.lose_life
# p player1
