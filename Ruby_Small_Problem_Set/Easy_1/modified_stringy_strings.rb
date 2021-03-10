# Modify stringy so it takes an additional optional argument that defaults to 1. If the method is called with this argument set to 0, the method should return a String of alternating 0s and 1s, but starting with 0 instead of 1.

def stringy(int, alt)
  binary_numbers = []

  if alt == 1
    int.times do |n|
      number = n.even? ? 1 : 0
      binary_numbers << number
    end
  elsif alt == 0
    int.times do |n|
      number = n.even? ? 0 : 1
      binary_numbers << number
    end
  end
  binary_numbers.join
end

puts stringy(6, 1) == '101010' #=> true
puts stringy(9, 0) == '010101010'  #=> true
puts stringy(4, 1) == '1010'  #=> true
puts stringy(7, 0) == '0101010'  #=> true
