require 'rspec'
require 'player'

describe Player do
  subject(:player) { Player.new("Winning Wade")}

  describe '#initialize' do
    it 'takes a string for a name' do
      expect(player.name).to be_an_instance_of(String)
    end

    it 'instantiates hand to nil' do
      expect(player.hand).to be nil
    end

    it 'instantiates money to 100' do
      expect(player.money).to eq(100)
    end


  end
end
