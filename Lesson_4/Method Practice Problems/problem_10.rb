# What is the return value of the following code? Why?

[1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end

# 2
# 3
# => [1, nil, nil]

# LS:
# To determine the block's return value, look at the last statement evaluated within the block.
# In this case its a bit tricky because of the if statement.
# For the first element, the if condition evaluates to false, which means num is the block's return value for that iteration.
# For the rest of the elements in the array, num > 1 evaluates to true, which means puts num is the last statement evaluated, which in turn, means that the block's return value is nil for those iterations.
