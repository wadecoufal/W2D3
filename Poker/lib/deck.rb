require 'card'

class Deck
  VALUES = %w(2 3 4 5 6 7 8 9 10 J Q K A)
  SUITS = [:spade, :heart, :diamond, :club]

  attr_accessor :deck

  def initialize
    @deck = []
    create_deck
  end

  def create_deck
    @deck = []
    VALUES.each do |val|
      SUITS.each do |suit|
        @deck << Card.new(val, suit)
      end
    end
    @deck.shuffle!
  end

end
