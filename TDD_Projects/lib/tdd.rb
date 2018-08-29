
class Array
  def my_uniq
    result = []
    self.each do |el|
      result << el unless result.include?(el)
    end
    result
  end

  def two_sum
    pairs_arr = []
    self.length.times do |idx1|
      (idx1+1...self.length).each do |idx2|
          pairs_arr << [idx1, idx2] if self[idx1] + self[idx2] == 0
      end
    end

    return pairs_arr
  end

  def my_transpose
    result = []
    (0...self.length).each do |row|
      new_arr = []
      (0...self[0].length).each do |col|
        new_arr << self[col][row]
      end
      result << new_arr
    end
    return result
  end

  def stock_picker
    sum = 0
    days = []

    self.each_with_index do |el, idx| # 8, 0
      self.each_with_index do |el2, idx2| # 14, 0
        if (el2 - el) > sum
          sum = (el2 - el)
          days = [idx, idx2]
        end
      end
    end

    days
  end




end
