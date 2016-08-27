# consider what a card does
class Card
  attr_accessor :rank, :suit

  def initialize(rank, suit)
    @rank, @suit = rank, suit
  end

  # returns card values
  def card_value
    "#{@rank}#{@suit}"
  end

  def is_face?
    @rank == "J" || @rank == "Q" || @rank == "K"
  end

  def is_ace?
    @rank == "A"
  end

end
