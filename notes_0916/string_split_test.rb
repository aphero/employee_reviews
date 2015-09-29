require 'minitest/autorun'
require 'minitest/pride'

# Write two methods:
#
#   * `first_name`: given a name in string, return the first name.
#   * `last_name`: given a name in string, return the last name.

# WRITE YOUR CODE HERE.
def first_name(name)
  if name == nil
    return ""
  else
    first = name.split
    if first.length == 3
      return "#{first[0]} #{first[1]}"
    elsif first.length == 2
      return first[0]
    elsif first.length == 1
      return first[0]
    else
      return ""
    end
  end
end

def last_name(name)
  if name == nil
    return ""
  elsif name.split.length == 1
    return ""
  else
    last = name.split
    if last[-1] == nil
      return ""
    elsif last.length == 2
      return last[-1]
    else
      return last[-1]
    end
  end
end

puts first_name("Josh McKelvey")
puts last_name("Josh McKelvey")

class StringSplitChallenge < MiniTest::Test
  def test_first_name
    assert_equal "Mason", first_name("Mason Matthews")
  end

  def test_last_name
    assert_equal "Matthews", last_name("Mason Matthews")
  end

  def test_one_word_name
    assert_equal "deadmou5", first_name("deadmou5")
    assert_equal "", last_name("deadmou5")
  end

  def test_three_word_name
    assert_equal "John Quincy", first_name("John Quincy Adams")
    assert_equal "Adams", last_name("John Quincy Adams")
  end

  def test_no_word_name
    assert_equal "", first_name("")
    assert_equal "", last_name("")
  end

  def test_nil_name
    assert_equal "", first_name(nil)
    assert_equal "", last_name(nil)
  end
end
