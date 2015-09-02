computer = (1..100).to_a.shuffle.sample
user = Array.new

puts "Let's play a game.  I'm going to pick a number between 1 and 100 and you get five guesses to find it.  Choose your first number."

def mocking(j)
  if j == 5
    puts "Haha, just kidding.  You're out of guesses."
    system('say "does it hurt?"')
  end
end

def check_guess(guess, answer)
  i = 0
  input = ''
  while i != 5 && input != answer
    input = gets.chomp.to_i
    if input == answer
      puts "You got it! Congratulations!"
      system('say "you won!"')
    elsif guess.include?(input)
      puts "You must be a goldfish.  You already guessed #{input}.  Try again, you fishy fish."
      system('say "so fishy"')
    elsif input > answer
      puts "#{input} is too high, try a lower number."
    elsif input < answer
      puts "#{input} is too low, try a higher number."
    else
      puts "Wrong turn."
      break
    end
    guess << input
    i += 1
  end

  mocking(i)
end

check_guess(user, computer)


puts "You guessed: #{user}"
puts "The answer was #{computer}"