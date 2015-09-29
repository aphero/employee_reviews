class Array
  def map_to_yelling
    new_array = []
    self.each do |i|
      yield # executes the code being passed into the block on line 12
      # new_array << i.upcase
    end
    new_array
  end
end

["dog", "cat", "lizard"].translate {puts "I am a block"} # the puts "I am a block" is what line 5 is referencing
=> I am a block
=> I am a block
=> I am a block

=============================

class Array
  def map_to_yelling
    new_array = []
    self.each do |i|
      new_array << yield # executes the code being passed into the block on line 12
      # new_array << i.upcase
    end
    new_array
  end
end

["dog", "cat", "lizard"].translate {puts "I am a block"} # the puts "I am a block" is what line 5 is referencing
=> ["I am a block", "I am a block", "I am a block"]

=============================

class Array
  def map_to_yelling
    new_array = []
    self.each do |i|
      new_array << yield(i) # executes the code being passed into the block on line 12
      # new_array << i.upcase
    end
    new_array
  end
end

["dog", "cat", "lizard"].translate {|word| word.upcase + "ZILLA"} # the puts "I am a block" is what line 5 is referencing
=> ["DOGZILLA", "CATZILLA", "LIZARDZILLA"]

=============================

class Array
  def map
    new_array = []
    self.each do |i|
      new_array << yield(i)
    end
    new_array
  end
end

=============================

class Array
  def select
    new_array = []
    self.each do |i|
      new_array << i if yield(i)
    end
    new_array
  end
end

=============================

class Array
  def any?
    self.each do |i|
      return true if yield(i)
    end
    false
  end
end
