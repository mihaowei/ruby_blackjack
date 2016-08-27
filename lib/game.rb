require_relative "deck"
require_relative "hand"
require_relative "card"

class Game
  attr_reader :player
  def initialize
    @deck = Deck.new
    @player = Hand.new([@deck.deal, @deck.deal])
    @computer = Hand.new([@deck.deal, @deck.deal])
    @bust = false
    @game_over = false
  end

  def display_hand
    puts "Player was dealt #{@player.card_arr[0].card_value}"
    puts "Player was dealt #{@player.card_arr[1].card_value}"
    puts "Player score: #{@player.calculate_hand}\n\n"
  end

  def play
    user_input = ""
    while user_input != 'n'
      puts "Do you want to hit? (Y/N)\n"
      user_input = gets.chomp.downcase
      if user_input == 'y'
        new_card = @deck.deal
        puts "Player was dealt: #{new_card.card_value}"
        player.card_arr << new_card
        new_player_score = @player.calculate_hand
        if new_player_score > 21
          user_input = 'n'
          puts "Player score: #{new_player_score}, bust\n\n"
          @bust = true
          puts "Dealer wins."
        else
          puts "Player score: #{new_player_score}\n\n"
        end
      elsif user_input == 'n'
        new_player_score = @player.calculate_hand
        user_input = 'n'
      else
        puts "Invalid input"
      end
    end

    if @bust == false
      puts "Dealer was dealt #{@computer.card_arr[0].card_value}"
      puts "Dealer was dealt #{@computer.card_arr[1].card_value}"
      puts "Dealer score: #{@computer.calculate_hand}\n\n"
    end

    while (@bust == false && (@computer.calculate_hand < @player.calculate_hand)) || (@bust == false && @computer.calculate_hand < 17)
      @computer.card_arr << @deck.deal
      puts "Dealer was dealt: #{@computer.card_arr[-1].card_value}"
      puts "Dealer score: #{@computer.calculate_hand}\n\n"
      if @computer.calculate_hand > 21
        puts "Dealer busts."
        puts "Player wins!"
      end
    end

    if @computer.calculate_hand == @player.calculate_hand && @bust == false
      puts "Hand is a draw.\n\n"
    elsif @computer.calculate_hand > @player.calculate_hand && @computer.calculate_hand <= 21
      puts "Dealer wins.\n\n"
    elsif @player.calculate_hand > @computer.calculate_hand && @player.calculate_hand <= 21
      puts "Player wins!\n\n"
    end
  end
end
