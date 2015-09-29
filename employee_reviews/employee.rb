require "./department.rb"

class Employee
  attr_reader :name, :email, :phone
  attr_accessor :review, :sat, :salary

  def initialize(name, email, phone, salary, review: '')
    @name = name
    @email = email
    @phone = phone
    @salary = salary
    @sat = false
  end
end
