# Write a method that takes one argument, a positive integer, and returns a string of alternating 1s and 0s, always starting with 1. The length of the string should match the given integer.

def stringy(int)
  binary_numbers = []

  int.times do |n|
    number = n.even? ? 1 : 0
    binary_numbers << number
  end
  binary_numbers.join
end

puts stringy(6) == '101010'  #=> true
puts stringy(9) == '101010101'  #=> true
puts stringy(4) == '1010'  #=> true
puts stringy(7) == '1010101'  #=> true
