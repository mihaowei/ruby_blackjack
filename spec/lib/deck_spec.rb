require "spec_helper"

RSpec.describe Deck do
  let(:deck) { Deck.new }

  describe "#build_deck" do
    it "builds a deck of 52 cards" do
      expect(deck.build_deck.size).to eq(52)
    end

    it "creates unique cards" do
      expect(deck.cards.uniq.size).to eq(52)
    end
  end

  describe "#deal" do
    it "removes one card" do
      start_size = deck.cards.size
      finish_size = start_size - 1
      deck.deal
      expect(deck.cards.size).to eq finish_size
    end
  end

end
