require 'player'
require 'deck'

class Game

  attr_accessor :deck, :pot
  attr_reader :players

  def initialize
    @deck = Deck.new
    @pot = 0
    @players = []
    @players_in_hand = @players
  end

  def get_players
    puts "How many players?"
    num_players = gets.chomp
    num_players.to_i.times do
      puts "What is your name?"
      name = gets.chomp
      @players << Player.new(name)
    end
  end

  def play
    play_turn until won?
  end

  def play_turn
    deal_cards
    players_bet
    draw_phase
    players_bet
    showdown
    pot_goes_to_winner
  end

  def deal_cards
    @players.each do |player|
      hand = @deck.deck.shift(5)
      player.hand = Hand.new(hand)
    end
  end

  def players_bet
    @players.each do |player|
      bet = player.turn
      bet == 0 ? @players_in_hand.delete(player) : @pot += bet
    end
  end


  def won?
  end

end
