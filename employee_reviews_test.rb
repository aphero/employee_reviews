require 'minitest/autorun'
require 'minitest/pride'
require './employee'
require './department'

class EmployeeReviewsTest < Minitest::Test
  def test_initialize
    assert Department.new("Engineering")
    assert Employee.new("Kelly", "kwalsh@spoonflower.com", "919-123-4567", 120000)
  end

  def test_add_employee_to_dept
  end

  def test_get_employee_name
  end

  def test_get_employee_salary
  end

  def test_get_department_name
  end

  def test_get_total_salary
  end

  def test_add_employee_review
  end

  def test_is_employee_good
  end

  def test_give_employee_raise
  end

  def test_give_dept_raises
  end
end
