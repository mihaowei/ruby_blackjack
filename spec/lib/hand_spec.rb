require "spec_helper"

describe Hand do

  let(:hand1) { Hand.new([Card.new(10, "♦"), Card.new("J", "♥")]) }
  let(:hand2) { Hand.new([Card.new(3, "♦"), Card.new(3, "♥")]) }
  let(:hand3) { Hand.new([Card.new("A", "♦"), Card.new("J", "♥")]) }
  let(:hand4) { Hand.new([Card.new("A", "♦"), Card.new("A", "♥")]) }
  let(:hand5) { Hand.new([Card.new("A", "♦"), Card.new("K", "♥"), Card.new(7, "♥")]) }

  describe "#card_arr" do
    it "returns cards in hand" do
      var = [hand1.card_arr[0].card_value, hand1.card_arr[1].card_value]

      expect(hand1.card_arr[0].card_value).to eq("10♦")
      expect(hand1.card_arr[1].card_value).to eq("J♥")
      expect(var).to eq(["10♦", "J♥"])
    end
  end

  describe "#calculate_hand" do
    it "returns numberic value of hand" do
      expect(hand1.calculate_hand).to eq(20)
      expect(hand2.calculate_hand).to eq(6)
      expect(hand3.calculate_hand).to eq(21)
      expect(hand4.calculate_hand).to eq(12)
    end
  end

end
