require 'minitest/autorun'
require 'minitest/pride'
require './employee'
require './department'

class EmployeeReviewsTest < Minitest::Test
  def test_initialize
    assert Department.new("Engineering")
    assert Employee.new("Kelly", "kwalsh@spoonflower.com", "919-")
  end
end
