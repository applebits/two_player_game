require './player'
require 'colorize'
require './methods'
require 'pry'

puts "Player 1 please enter your name: "
@player_1 = Player.new(gets.chomp)
puts "Player 2 please enter your name: "
@player_2 = Player.new(gets.chomp)
@player_1_turn = true

current_turn = @player_1 

while(@player_1.lives > 0) && (@player_2.lives > 0)  
  puts "It is now #{current_turn.name}'s turn. #{current_turn.name} has #{current_turn.lives} lives left"
  answer = generate_question
  user_answer = prompt_player
  result = verify_answer(answer,user_answer)
  if result == false
    current_turn.lose_life
  end
  if current_turn == @player_1
    current_turn = @player_2
  else 
    current_turn = @player_1
  end
end












