# Print all odd numbers from 1 to 99, inclusive, to the console, with each number on a separate line.

(1..99).each { |n| puts n if n.odd?}

#LS Solution
value = 1
while value <= 99
  puts value
  value += 2
end
