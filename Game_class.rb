class Game < Player
  attr_accessor :current_player, :game_over
  attr_reader :player_1, :player_2
  def initialize(player_1, player_2)
    @current_player = player_1
    @game_over = false
    @player_1 = player_1
    @player_2 = player_2
  end

  def game_over?
    if player_1.lives == 0 or player_2.lives == 0
      self.game_over = true
    end

    self.game_over == true 
  end

  def change_turn 
    if self.current_player == player_1
      self.current_player = player_2
    else
      self.current_player = player_1
    end
  end
end