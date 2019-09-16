class Player

  attr_accessor :lives, :name

  def initialize
    self.name = name
    self.lives = 3
  end

  puts "\n <--- WELCOME TO THIS FUN MATH GAME! --->\n"

  def get_name
    puts "\nWhat is your name?\n"
    self.name = gets.chomp
  end

  def lose_life
    self.lives = self.lives - 1
  end

end
