## THINGS TO REMEMBER
## Output from here is converted to String format
## Anything coming in is in Integer for calculation accuracy
require './currency_converter'

class DifferentCurrencyCodeError < StandardError
end

class Currency

  attr_reader :amount
  attr_reader :code

  def initialize(*args)
    sym_code = { USD: "$", EUR: "€", GBP: "£"}
    sym_code2 = { "$" => :USD, "€" => :EUR, "£" => :GBP }
    if args.length == 2
      @amount = args[0].to_s.gsub(/\$€£/,"").to_f
      @code = args[1].to_sym
    elsif args.length == 1
      @amount = args.to_s.gsub(/[\[\]"\$€£]/,"").to_f
      @code = sym_code2[args.to_s.gsub(/[\[\]".\d]/,"")]
    else
      raise "Invalid input"
    end
  end

  def amount
    @amount
  end

  def code
    @code
  end

  def +(add)
    if @code == add.code
      Currency.new(@amount + add.amount, @code)
    else
      raise DifferentCurrencyCodeError, "You're trying to mix it up I see."
    end
  end

  def -(sub)
    if @code == sub.code
      Currency.new(@amount - sub.amount, @code)
    else
      raise DifferentCurrencyCodeError, "Are you Sir Mixalot?"
    end
  end

  def *(prod)
      Currency.new(@amount * prod, @code)
  end

  def ==(value)
    if @amount == (value.amount) && @code == (value.code)
      true
    end
  end

end
