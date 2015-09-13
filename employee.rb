require "./department.rb"

class Employee
  attr_reader :name, :email, :phone, :salary
  attr_accessor :review, :sat

  def initialize(name, email, phone, salary, review: '')
    @name = name
    @email = email
    @phone = phone
    @salary = salary
    @raise = false
  end
end
