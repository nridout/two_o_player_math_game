# - Generates question & answer
# - Random numbers

class Question
  attr_reader :answer, :question

  def initialize
    @question = ''
    @answer = 0
  end

  def new_question
    random_num1 = 1 + rand(10)
    random_num2 = 1 + rand(10)
    @answer = (random_num1 + random_num2)
    @question = "What does #{random_num1} plus #{random_num2} equal?"
  end

end

# # Tests

# # #What does 5 plus 3 equal?
# question1 = Question.new
# p question1.new_question
# p question1
# puts question1.question
