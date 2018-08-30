require 'card'

class Hand

  TYPES = [:pair, :two_pair, :set, :flush, :straight, :fullhouse, :straight_flush, :royal_flush].freeze

  attr_reader :hand
  
  def initialize(hand)
    @hand = hand
  end


end
