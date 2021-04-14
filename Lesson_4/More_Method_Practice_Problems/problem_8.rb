#What happens when we modify an array while we are iterating over it? What could the output be for this code?
numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end
# 1
# 3
numbers #=> [3, 4]

#----------------------------------------------------------

# and the output for this code?
numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end
# 1
# 2
numbers #=> [1, 2]

#-----------------------------------------------------------

# To understand what is going on, we augment our loop with some additional 'debugging' information:
numbers = [1, 2, 3, 4]
numbers.each_with_index do |number, index|
  p "#{index}  #{numbers.inspect}  #{number}"
  numbers.shift(1)
end
#the output is this:
# => "0  [1, 2, 3, 4]  1"
# => "1  [2, 3, 4]  3"
=begin    
From this we see that our array is being changed as we go 
(shortened and shifted), and the loop counter used by #each
is compared against the current length of the array rather
than its original length.
In the first example, the removal of the first item in the
first pass changes the value found for the second pass.
In the second example, we are shortening the array each pass
just as in the first example...but the items removed are beyond
the point we are sampling from in the abbreviated loop.
In both cases, we see that iterators DO NOT work on a copy
of the original array or from stale meta-data (length) about
the array. They operate onthe original array in real time.
=end
