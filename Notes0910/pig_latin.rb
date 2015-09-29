class String
  def otay_igpay_atinlay
    words = self.split

    word.map {|w| w[1..-1] + w[0] + "ay"}

    # OR
    # words = self.split.map {|w| w[1..-1] + w[0] + "ay"}.join(" ")

    # OR
    #
    # pig_words = []
    # words.each do |w|
    #   pig_words << w[1..-1] + w[0] + "ay"
    # end

    pig_words.join(" ")
  end
end

THINGS BASED ON .EACH
.each returns whatever each object is
.any? returns true or false
.all? returns true or false
.map returns an array of equal sizes
.select returns a subset you specify
.reject returns a subset opposite of what you specify
.reduce returns

[1, 2, 3, 4].reduce {|sum. i| sum + i}
=> 10

Splain it:
first pass: sum = 0, i equals the first value in the array
second pass: sum = 1 (the returned total of sum + i) and adds the second value in the array
etc.
