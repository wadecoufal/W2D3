require 'rspec'
require 'hand'
require 'card'
require 'deck'

describe Hand do
  let(:card) { double("card")}
  let(:card_arr) { [card, card, card, card, card]}
  subject(:hand) { Hand.new(card_arr)}

  describe "initialize" do
    it "initializes a hand of 5 cards" do
      expect(hand.hand).to eq(card_arr)
    end

  end
end
