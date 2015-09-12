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

  def get_employee_salary
    @employees.each do |x|
      return x.salary
    end
    false
  end

  def get_dept_salary
    tot_salary = 0
    @employees.each do |x|
      tot_salary += x.salary
    end
    tot_salary != 0 ? tot_salary : false
  end
end
