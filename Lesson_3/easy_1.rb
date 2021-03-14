# Question 1:
# What would you expect the code below to print out?
numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers
# Answer: 1 2 2 3 -- numbers.uniq returned a new Array object with unique elements, but it did not modify the numbers object. Further, the puts method automatically calls to_s on its argument, and that’s why you see the output like above.
# Additional note: had the last line been p numbers instead, the output would have been [1, 2, 2, 3] because the p method automatically calls inspect on its argument, which gives a different formatting on the output. Furthermore, we could have also done puts numbers.inspect and the output would have been the same as using the p method.

# Question 2:
# Describe the difference between ! and ? in Ruby. And explain what would happen in the following scenarios:
# 1. what is != and where should you use it?  -- does not equal
# 2. put ! before something, like !user_name -- using just one ! (!user_name) returns the opposite of its boolean equivalent (false)
# 3. put ! after something, like words.uniq! -- mutates
# 4. put ? before something  - ternary operator expression???
# 5. put ? after something -- part of an expression/ternary operator: int.even? ? "is even" : "not even"
# 6. put !! before something, like !!user_name  -- turns it into its boolean equivalent (true)
# Answer: They are part of Ruby's syntax and depending on how they are used in an expression effects their result. ! used at the end of a methods name is actually part of the methods name.

#Question 3: 
# Replace the word "important" with "urgent" in this string:
advice = "Few things in life are as important as house training your pet dinosaur."
# Answser: 