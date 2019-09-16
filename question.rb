class Question

  def initialize(current_player)
    @num1 = rand(1..30)
    @num2 = rand(1..30)
    @player_name = current_player.name
  end

  def ask_question
    puts "\n#{@player_name}: What does #{@num1} plus #{@num2} equal?\n"
    answer = gets.chomp
    if (@num1 + @num2 == answer.to_i) # check if addition of two numbers is integer
      return answer.to_i    # if so, convert answer to integer and return it
      return true
    else
      return false
    end
  end

end
