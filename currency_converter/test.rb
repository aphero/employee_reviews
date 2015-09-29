require './currency'
require './currency_converter'

currency_rates = { USD: 1.0, EUR: 0.89686, GBP: 0.65456 }
hash = Currency_converter.new(currency_rates)
# convert_me = Currency_converter.new()
convert_me_too = Currency.new(1.00, :EUR)
converted = hash.convert(convert_me_too, :GBP)
puts converted.amount
puts converted.code
