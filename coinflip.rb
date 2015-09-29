coin = rand(1..2)

system('say -v good "hey everyone, you got"')
if coin == 1
  puts "Heads"
  system('say -v good "Heads"')
elsif coin == 2
  puts "Tails"
  system('say -v good "Tails"')
else
  puts "Landed on the edge.  Flip again"
end
