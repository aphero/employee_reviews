bucket = 0.0
justnow = 0.0
items = 1
strang = ""
list = ""
skip = false

puts "Please throw down some numbers or words, but don't be mixin'em up."
justnow = gets.chomp
check = Float(justnow) rescue false
justnowConvert = justnow.to_f
bucket += justnowConvert

if check
  loop do
    justnow = gets.chomp
    check = Float(justnow) rescue false
    justnowConvert = justnow.to_f
    bucket += justnowConvert
    if justnow.empty? || justnow.nil?
      break
    elsif !check
      puts "What do you think this is, reading rainbow!?  We're doing numbers this time.  Try again later."
      skip = true
      break
    end
    items += 1
  end

  if !skip
    puts "Total number of items: #{items}"
    puts "Total of all numbers: #{bucket}"
    puts "Average of numbers supplied: #{bucket/items}"
    puts "Standard deviation: #{Math.sqrt(bucket/items)}"
  end
else
  loop do
    list = "#{list}" + "#{justnow}"
    justnow = gets.chomp
    check = Float(justnow) rescue false
    if justnow.empty? || justnow.nil?
      break
    elsif check
      puts "You done messed up.  We're reading words here.  Please try again later."
      break
    end
  end
  puts "#{list}"
end
