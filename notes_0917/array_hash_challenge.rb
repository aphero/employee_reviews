require 'minitest/autorun'
require 'minitest/pride'

# Write a method which accepts an array and returns a hash.  Each item in the
# array will be a string, and the returned hash should have last names as keys
# and first names as values.

# WRITE YOUR CODE HERE.  Name your method `names`.
def first_name(name)
  array = name.to_s.split
  return name.to_s if array.length < 2
  array[0..-2].join(" ")
end

def last_name(name)
  array = name.to_s.split
  return "" if array.length < 2
  array[-1]
end

def names(name)

  return {} if name == [] || name==nil
  full = {}
  name.each {|n| full[last_name(n)]=first_name(n)}
  full
end

class ArrayAndHashChallenge < MiniTest::Test

  def test_one_name
    expected = {"Washington" => "George"}
    assert_equal expected, names(["George Washington"])
  end

  def test_complex_name
    expected = {"Adams" => "John Quincy"}
    assert_equal expected, names(["John Quincy Adams"])
  end

  def test_two_names
    expected = {"Washington" => "George", "Adams" => "John Quincy"}
    assert_equal expected, names(["George Washington", "John Quincy Adams"])
  end

  def test_no_names
    assert_equal Hash.new, names(Array.new)
  end

  def test_no_array
    assert_equal Hash.new, names(nil)
  end

  def test_bare_name
    expected = {"Adams" => "John Quincy"}
    assert_equal expected, names("John Quincy Adams")
  end

  def test_short_name
    expected = {"Adams" => "John Quincy"}
    assert_equal expected, names("John Quincy Adams")
  end

  # This test goes above and beyond the call of duty.  Only worry about making it pass if you have extra time.
  def test_last_names_dont_overwrite
    expected = {"Washington" => "George", "Roosevelt" => ["Theodore", "Franklin"]}
    assert_equal expected, names(["George Washington", "Theodore Roosevelt", "Franklin Roosevelt"])
  end
end
