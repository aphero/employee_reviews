def split_first_name(name)
  first = name.split
  return first[0]
end

def split_last_name(name)
  last = name.split
  return last[1]
end

puts split_first_name("Josh McKelvey")
puts split_last_name("Josh McKelvey")
