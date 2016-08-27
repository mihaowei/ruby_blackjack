require "spec_helper"

describe Game do
  let(:game) { Game.new }
  let(:deck) { Deck.new }
  let(:card1) { deck.deal }
  let(:card2) { deck.deal }
  let(:player) { [card1, card2] }
  let(:computer) { Hand.new([deck.deal, deck.deal]) }

  describe "#display_hand" do
    it "displays the player's hand" do
      expect(game.display_hand).to eq("Player was dealt #{game.player.card_arr[0].card_value}\nPlayer was dealt #{game.player.card_arr[1].card_value}\nPlayer score: #{game.player.calculate_hand}\n\n")
    end
  end

  describe "#play" do
    it "runs the dealer's turn" do

    end
  end

end
