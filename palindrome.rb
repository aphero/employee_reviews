# Take user input and determine if it is a palindrome

# Set potato to number of walls in room.
potato = 3

while (potato < 8)
  # puts potato
  puts "Please enter a word. The potato will check if it's a palindrome"
  steak = gets.chomp
  potato += 1
  if (steak == steak.reverse)
    puts "Palindrome!"
  else
    puts "Nope, not a palindrome."
  end
end
puts steak
