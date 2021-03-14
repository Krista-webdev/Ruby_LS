# Write a method that takes one argument, an array containing integers, and returns the average of all numbers in the array. The array will never be empty and the numbers will always be positive integers. Your result should also be an integer.

def average(arr)
  num = arr.sum(0.0) / arr.size
  num.floor
end

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3  => true
puts average([1, 5, 87, 45, 8, 8]) == 25    #=> true
puts average([9, 47, 23, 95, 16, 52]) == 40 #=> true