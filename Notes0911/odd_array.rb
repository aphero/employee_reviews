# class NotArrayError < StandardError
# end

class OddArray
  def initialize(array)
    @array = array
  end

  def <<(item)
    @array << item
  end

  def to_a
    @array.reject {|x| x % 2 == 0}
  end
end
