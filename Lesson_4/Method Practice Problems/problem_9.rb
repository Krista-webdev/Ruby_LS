# What is the return value of map in the following code? Why?

{ a: 'ant', b: 'bear' }.map do |key, value|
  if value.size > 3
    value
  end
end

# Ruby Doc: map{|element| ...} --> new_array
# => [nil, "bear"]
# LS:
# First, the return value of map is an array, which is the collection type that map always returns.
# Second, where did nil come from? If we look at the if condition (value.size > 3), we'll notice that it evaluates to true when the length of value is greater than 3.
# In this case, the only value with a length greater than 3 is "bear".
# This means that for the first element, "ant", the condition evaluates to false and value isn't returned.
# When none of the conditions in an if statement evaluates as true, the if statement itself returns nil.
# That's why we see nil as the first element in the returned array.
