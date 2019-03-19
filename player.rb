class Player
  attr_reader :name, :lives

  # Each player starts with 3 lives
  def initialize(name)
    @name = name
    @lives = 3
  end

  # Player loses life if question is mis-answered
  def lose_life
    @lives -= 1
  end

  # Player loses game once no lives left
  def loser?
    @lives == 0
  end
end