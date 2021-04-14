# What is the return value of the select method below? Why?

[1, 2, 3].select do |num|
  num > 5
  'hi'
end

# => [1, 2, 3]
# select performs selection based on the truthiness of the block's return value. 
# The return value of the block will always be 'hi', which is a 'truthy' value.
# Therefore, select will return a new array containing all of the elements of the original array.
