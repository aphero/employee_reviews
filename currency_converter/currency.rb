class Currency
  def initialize(amount, code)
    @amount = amount
    @code = code
  end
end

def validate_code(c)
  valid = ["USD", "EUR"]
  valid.include?(c)
end

def validate_curr(cu)
  cu.is_a?(Fixnum)
end

until validate_code(code)
  puts "Please enter a currency code. (USD or EUR)"
  code = gets.chomp
end

until validate_curr(curr)
  puts "Please enter an amount of currency."
  curr = gets.chomp
end
