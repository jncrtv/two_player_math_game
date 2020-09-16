class Player
  attr_accessor :name, :lives

  def initialize(n)
    self.name = n
    self.lives = 3
  end

  def stillAlive
    self.lives > 0
  end
end