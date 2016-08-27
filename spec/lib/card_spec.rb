require "spec_helper"

RSpec.describe Card do

  let(:card1) { Card.new(10,"♦") }
  let(:card2) { Card.new("J","♥") }
  let(:card3) { Card.new(3,"♦") }
  let(:card4) { Card.new("A","♥") }

  describe "#rank" do
    it "returns card rank" do
      expect(card1.rank).to eq(10)
      expect(card2.rank).to eq("J")
      expect(card3.rank).to eq(3)
      expect(card4.rank).to eq("A")
    end
  end

  describe "#suit" do
    it "returns card suit" do
      expect(card1.suit).to eq("♦")
      expect(card2.suit).to eq("♥")
      expect(card3.suit).to eq("♦")
      expect(card4.suit).to eq("♥")
    end
  end

  describe "#card_value" do
    it "returns card rank and suit" do
      expect(card1.card_value).to eq("10♦")
      expect(card2.card_value).to eq("J♥")
      expect(card3.card_value).to eq("3♦")
      expect(card4.card_value).to eq("A♥")
    end
  end

  describe "#is_face?" do
    it "returns true if face" do
      expect(card1.is_face?).to eq(false)
      expect(card2.is_face?).to eq(true)
      expect(card3.is_face?).to eq(false)
      expect(card4.is_face?).to eq(false)
    end
  end

  describe "#is_ace?" do
    it "returns true if ace" do
      expect(card1.is_ace?).to eq(false)
      expect(card2.is_ace?).to eq(false)
      expect(card3.is_ace?).to eq(false)
      expect(card4.is_ace?).to eq(true)
    end
  end


end
