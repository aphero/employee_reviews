require 'minitest/autorun'
require 'minitest/pride'
require './employee'
require './department'

class EmployeeReviewsTest < Minitest::Test
  def test_initialize_01
    assert Department.new("Engineering")
    assert Employee.new("Kelly", "kwalsh@spoonflower.com", "919-123-4567", 120000)
  end

  def test_add_employee_to_dept_02
    dept = Department.new("Kitchen")
    assert dept.add_employee("Bork", "swedishchef@spoonflower.com", "919-123-4567", 30000)
  end

  def test_get_employee_name_03
    dept = Department.new("Kitchen")
    assert dept.add_employee("Bork", "swedishchef@spoonflower.com", "919-123-4567", 30000)
    assert dept.get_employee_name == "Bork"
  end

  def test_get_employee_salary_04
    dept = Department.new("Stage")
    assert dept.add_employee("Kermit", "thefrog@spoonflower.com", "919-123-4567", 90000)
    assert dept.get_employee_salary == 90000
  end

  def test_get_department_name_05
    dept = Department.new("Print Ops")
    assert "Print Ops" == dept.name
  end

  def test_get_total_salary_06
    dept = Department.new("Engineering")
    dept.add_employee("Kelly", "kwalsh@spoonflower.com", "919-123-4567", 120000)
    dept.add_employee("Bork", "swedishchef@spoonflower.com", "919-123-4567", 30000)
    dept.add_employee("Kermit", "thefrog@spoonflower.com", "919-123-4567", 90000)
    assert dept.get_dept_salary == 240000
  end

  def test_add_employee_review_07
  end

  def test_is_employee_good_08
  end

  def test_give_employee_raise_09
  end

  def test_give_dept_raises
  end
end
