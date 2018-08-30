require 'rspec'
require 'deck'
require 'card'

describe Deck do
  subject(:deck) { Deck.new }

  describe '#initialize' do
    it 'should create a deck of 52 cards' do
      expect(deck.deck.length).to eq(52)
    end

    it 'each element of deck should be an instance of class Card' do
      expect(deck.deck).to all( be_an_instance_of(Card))
    end
  end

end
