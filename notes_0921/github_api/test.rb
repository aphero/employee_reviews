require 'minitest/autorun'
require 'minitest/pride'
require './things'

class Astronomy
  private def get_response
    File.open(#TO BE DETERMINED)
  end
end

class AstronomyTest < Minitest::Test

  def test_age_of_moon
    assert_equal 8, Astronomy.new("Sydney").age_of_moon
  end

end
