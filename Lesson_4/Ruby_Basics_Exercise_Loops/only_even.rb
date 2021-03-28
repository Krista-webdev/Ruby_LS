# Using next, modify so that it will only print even numbers
number = 0

until number == 10
  number += 1
  next if number.odd?
  puts number
end
