# What is the block's return value in the following code? How is it determined? Also, what is the return value of any? in this code and what does it output?

[1, 2, 3].any? do |num|
  puts num
  num.odd?
end

# The blocks return value => true (on first iteration)
# It is determined by the return value of the last expression within the block (num.odd?), which returns a boolean.
# The return value of any? => true
# Since Array#any? method returns true if the block ever returns a value other than false or nil, and the block returns true on the first iteration, it will return true.
# any? stops iterating at this point since there is no need to evaluate the remaining items in the array.
# Output: => 1
# Therefore, puts num is only ever invoked for the first item in the array!

# => 1
# => true
