require_relative 'game'

game_over = false
puts "\nWelcome to Blackjack!\n\n"

while game_over == false
  game = Game.new
  game.display_hand
  game.play
  puts "Do you want to play a new hand? (Y/N)"
  answer = gets.chomp.downcase
  if answer == 'n'
    game_over = true
  end
end
