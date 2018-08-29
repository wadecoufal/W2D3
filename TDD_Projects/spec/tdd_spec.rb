require 'tdd.rb'
require 'rspec'

describe Array do
  describe "#uniq" do

    it 'returns an empty array if self is empty' do
      expect([].my_uniq).to eq([])
    end

    context "removes dups of array of integers" do
      it "removes duplicates" do
        expect([2,3,1,3].my_uniq).to eq([2,3, 1])
      end
    end

    context "removes dups of array of strings" do
      it "removes duplicates" do
        expect(['d','d','b','c','c','a'].my_uniq).to eq(['d','b','c','a'])
      end
    end
  end

  describe "#two_sum" do

    it 'returns an empty array if self is empty' do
      expect([].two_sum).to eq([])
    end

    it 'returns an empty array if no elements sum to zero' do
      expect([1,-4,3,2,-5].two_sum).to eq([])
    end

    it 'returns a nested array of the indices of elements that sum to zero' do
      expect([2,3,-2,-1].two_sum).to eq([[0,2]])
    end

    it 'pairs are ordered by the value of their first element' do
      expect([2,-2,3,-3].two_sum).to eq([[0,1],[2,3]])
    end
  end

  describe "#my_transpose" do

    it 'transposes a square array' do
      expect([[1,2], [3,4]].my_transpose).to eq([[1,3],[2,4]])
    end

  end


  describe "#stock_picker" do

    it "picks the most profitable days to have bought and sold a stock" do
      expect([8, 14, 10, 20, 17].stock_picker).to eq([0, 3])
    end


  end



end
