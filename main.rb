require_relative "Player_class.rb"
require_relative "Questions_class.rb"
require_relative "Game_class.rb"

def run_quiz()
  player1 = Player.new("Bob")
  player2 = Player.new("Tom")
  game = Game.new(player1, player2)

  while !game.game_over?
    num1 = rand(1..9)
    num2 = rand(1..9)
    prompt = "What is #{num1} + #{num2}?"
    answer = (num1 + num2).to_s
    question = Questions.new(prompt, answer)
    
    puts "#{game.current_player.name} : #{question.prompt}"
    
    player_answer = gets.chomp()
    
    if player_answer == answer
      puts "Yes, you are correct"
      puts "#{player1.name} #{player1.lives} vs #{player2.name} #{player2.lives}"
    else
      puts "No, you are not correct"
      game.current_player.lives -= 1
      puts "#{player1.name} #{player1.lives} vs #{player2.name} #{player2.lives}"
    end
    
    puts "---New Turn---"
    game.change_turn
  end

  if player1.lives == 0
    puts "player 2 wins with a score of #{player2.lives}"
  else
    puts "player 1 wins with a score of #{player1.lives}"
  end
  puts "Game Over"
  puts "goodbye!"

end

run_quiz()