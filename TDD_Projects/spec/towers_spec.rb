require 'towers.rb'


describe TowersOfHanoi do
  subject(:game) {TowersOfHanoi.new}

  describe "#initialize" do
    it "should initialize with an array of three arrays" do
      expect(game.towers.length).to eq(3)
      expect(game.towers[0..2]).to all( be_an_instance_of(Array) )
    end

    it "the first pile should be instantiated with all three discs" do
      expect(game.towers[0]).to eq([3,2,1])
    end
  end

  describe "#valid_move?" do
  end

  describe "get_move" do

    it "returns an array of two integers"

  end

end
