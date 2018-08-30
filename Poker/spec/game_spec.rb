require 'rspec'
require 'game'


describe Game do
  subject(:game) { Game.new }
  # let(:deck) { double("deck")}

  describe "#initialize" do
    it "initializes with a deck" do
      expect(game.deck).to be_an_instance_of(Deck)
    end

    it "initializes players as an empty array" do
      expect(game.players).to eq([])
    end

    it "initializes an empty pot" do
      expect(game.pot).to eq(0)
    end

  end

  describe '#get_players' do

    it "returns an array of Player instances" do
      expect(game.players).to all( be_an_instance_of(Player))
    end

  end




end
