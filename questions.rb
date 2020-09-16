class Question
  attr_accessor :answer, :val1, :val2

  def initialize
    self.val1 = rand(1..10)
    self.val2 = rand(1..10)
    self.answer = val1 + val2
  end

  def askQuestion
    puts "What does #{val1} plus #{val2} equal? "
  end
end