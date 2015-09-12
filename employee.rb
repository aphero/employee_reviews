class Employee
  attr_reader :name, :email, :phone, :salary
  attr_accessor :review

  def initialize(name, email, phone, salary, review = "")
    @name = name
    @email = email
    @phone = phone
    @salary = salary
    @review = review
  end
end
