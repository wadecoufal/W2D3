require 'hand'


class Player

  attr_reader :name, :money
  attr_accessor :hand

  def initialize(name)
    @name = name
    @money = 100
    @hand = nil
  end

  def turn
    puts "Given your hand, do you want to bet or fold? Type 'bet' or 'fold'."
    choice = gets.chomp
    case choice
    when 'fold'
      return 0
    when 'bet'
      puts "How much do you want to bet?"
      bet = gets.chomp
      return bet.to_i
    end 
  end

end
