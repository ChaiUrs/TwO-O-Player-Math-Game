class Game

  def initialize
    @winner = false
  end

  def play_game
    player1 = Player.new
    player1.get_name
    player2 = Player.new
    player2.get_name

    while !@winner
      turn = Turn.new(player1, player2)
      turn.player_turn

      p1 = player1.lives
      p2 = player2.lives
      puts "\n#{player1.name}: #{p1}/3 vs #{player2.name}: #{p2}/3\n"

      if p1.to_i == 0 && p2.to_i == 0
        puts "\n<---- GAME OVER ---->"
        puts "There is no Winner! Try Again"
        puts "\n"
        return
      end

      if p1.to_i == 0
        puts "\n<--- #{player2.name} wins with a score of #{p2}/3 --->\n"
        @winner = true
        puts "\n"
      elsif p2.to_i == 0
        puts "\n<--- #{player1.name} wins with a score of #{p1}/3 --->\n"
        @winner = true
        puts "\n"
      end
    end
  end

end
