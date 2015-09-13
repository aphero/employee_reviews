require "./employee.rb"

class Department
  attr_reader :name, :employees

  def initialize(name)
    @name = name
    @employees = []
  end

  def add_employee(name, email, phone, salary)
    @employees << Employee.new(name, email, phone, salary)
  end

  def get_employee_name
    @employees.each do |x|
      return x.name
    end
    false
  end

  def get_employee_salary(name)
    @employees.each do |x|
      return x.name == name ? x.salary : false
    end
  end

  def get_dept_salary
    tot_salary = 0
    @employees.each do |x|
      tot_salary += x.salary
    end
    tot_salary != 0 ? tot_salary : false
  end

  def add_review(name, review)
    @employees.each do |x|
      x.name == name ? x.review = review : false
    end
  end

  def get_review(name)
    @employees.each do |x|
      return x.name == name ? x.review : false
    end
  end

  def set_sat(name)
    @employees.each do |x|
      x.name == name ? x.sat = true : false
    end
  end

  def get_sat(name)
    @employees.each do |x|
      return x.name == name ? x.sat : false
    end
  end
end
