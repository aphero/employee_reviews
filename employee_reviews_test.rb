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
    dept.add_employee("Bork", "swedishchef@spoonflower.com", "919-123-4567", 30000)
    assert dept.get_employee_name == "Bork"
  end

  def test_get_employee_salary_04
    dept = Department.new("Stage")
    dept.add_employee("Kermit", "thefrog@spoonflower.com", "919-123-4567", 90000)
    assert dept.get_employee_salary("Kermit") == 90000
    # refute dept.get_employee_salary("Bork") == 30000
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
    dept = Department.new("Research")
    emp = dept.add_employee("Zeke", "zeke@spoonflower.com", "919-123-4567", 40000)
    rev = "Zeke is a very positive person and encourages those around him, but he has not done well technically this year.  There are two areas in which Zeke has room for improvement.  First, when communicating verbally (and sometimes in writing), he has a tendency to use more words than are required.  This conversational style does put people at ease, which is valuable, but it often makes the meaning difficult to isolate, and can cause confusion.

    Second, when discussing new requirements with project managers, less of the information is retained by Zeke long-term than is expected.  This has a few negative consequences: 1) time is spent developing features that are not useful and need to be re-run, 2) bugs are introduced in the code and not caught because the tests lack the same information, and 3) clients are told that certain features are complete when they are inadequate.  This communication limitation could be the fault of project management, but given that other developers appear to retain more information, this is worth discussing further."
    dept.add_review("Zeke", rev)
    assert dept.get_review("Zeke") == rev
  end

  def test_is_employee_good_08
  end

  def test_give_employee_raise_09
  end

  def test_give_dept_raises
  end
end
