# consider what a hand does
require_relative "deck"

class Hand
  attr_accessor :card_arr
  def initialize(card_arr = [])
    @card_arr = card_arr
  end

  # calculate hand
  def calculate_hand
    sum = 0
    ace_count = 0
    @card_arr.each do |card|
      if card.is_ace?
        sum += 11
        ace_count += 1
      elsif card.is_face?
        sum += 10
      else
        sum += card.rank
      end
    end

    while sum > 21 && ace_count > 0
      sum -= 10
      ace_count -= 1
    end
    sum
  end

  # def split?
  #   if any card ranks witin card_arr are equivalent then split prompt user about splitting
  # end
  #
  # def split!
  #   if user split? and user wants to split then split cards into two new hands, an array of hands?
  # end

end
