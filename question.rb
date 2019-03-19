class Question
  attr_reader :answer, :question

  def initialize
    @question = ''
    @answer = 0
  end

  # Generate new game question
  def new_question
    # Two random numbers
    random_num1 = 1 + rand(10)
    random_num2 = 1 + rand(10)
    # Store question in format: What does 5 plus 3 equal?
    @question = "What does #{random_num1} plus #{random_num2} equal?"
    # Store answer
    @answer = (random_num1 + random_num2)
  end
end