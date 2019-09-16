class Turn

  def initialize (player1, player2)
    @player1 = player1
    @player2 = player2
    @current_player = ""
  end

  def player_turn
    puts "\n<--- NEW TURN --->\n"
    @current_player = @player1
    show_question
    @current_player = @player2
    show_question
  end

  def show_question
    question = Question.new(@current_player)
    answer = question.ask_question
    if answer
      puts "\n#{@current_player.name}: YES! YOU ARE CORRECT.\n"
    else
      @current_player.lose_life
      puts "\n#{@current_player.name}: SERIOUSLY? NO!\n"
    end
  end
end
