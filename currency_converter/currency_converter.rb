require "./currency"

class UnknownCurrencyCodeError < StandardError
end

class Currency_converter
  attr_reader :con_rates
  attr_reader :code_to_sym

  def initialize(curr_rates)
    @con_rates = curr_rates
    @code_to_sym = { USD: "$", EUR: "€", GBP: "£" }
  end

  def convert(old_curr, new_code)
    if @con_rates.has_key?(new_code) && @con_rates.has_key?(old_curr.code)
      return Currency.new((@con_rates[new_code]/@con_rates[old_curr.code])*old_curr.amount, new_code)
    else
      raise UnknownCurrencyCodeError, "Could not find currency code to convert to."
    end
  end
end
