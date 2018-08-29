
class TowersOfHanoi
  attr_reader :towers

  def initialize
    @towers = [[3,2,1],[], []]
  end

  def play

    until won?
      get_move
      valid_move?
      move_discs
    end

  end

  def won?
  end

  def valid_move?
  end

  def get_move
  end

  def move_discs
  end

end
