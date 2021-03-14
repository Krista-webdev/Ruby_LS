# Write a method that takes one argument, a positive integer, and returns the sum of its digits.
# For a challenge, try writing this without any basic looping constructs (while, until, loop, and each).

def sum(int)
  num = int.to_s.split('').map {|i| i.to_i}
  num.sum
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

# Alternate Solution

# def sum(int)
#   int.to_s.split('').map(&:to_i).reduce(:+)
# end
