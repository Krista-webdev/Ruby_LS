name = 'Bob'
save_name = name
name = 'Alice'
puts name, save_name #=> Alice, Bob

name = 'Bob'
save_name = name
name.upcase!
puts name, save_name #=> BOB, BOB
=begin
assignment in ruby just assigns a reference to a variable,
both name and save_name refer to the same string, Bob.
When you apply name.upcase!, which mutates name in place,
the value that save_name references also changes.
Thus, both name and save_name are set equal to 'BOB'.
=end

# For Review on this concept:
# Pass by Reference vs Pass by Value in Lesson 2 of Programming Foundations.
