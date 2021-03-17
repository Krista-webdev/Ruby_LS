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
# Answser: advice.gsub("important", "urgent")

#Question 4:
# The Ruby Array class has several methods for removing items from the array. Two of them have very similar names. Let's see how they differ:
numbers = [1, 2, 3, 4, 5]
# What do the following method calls do (assume we reset numbers to the original array between method calls)?
numbers.delete_at(1) #=> removes 2 (which is indexed at 1) and numbers now = [1, 3, 4, 5]
numbers.delete(1) #=> removes the actual number 1 and numbers now = [2, 3, 4, 5]

#Question 5:
# Programmatically determine if 42 lies between 10 and 100. Hint: Use Ruby's range object in your solution.
(10..100).include?(42)  #=> true
(10.100).cover?(42) #=> true

#Question 6:
famous_words = "seven years ago..."
# show two different ways to put the expected "Four score and " in front of it.
famous_words.insert(0, "Four score and ")
famous_words.prepend("Four score and ")
"Four score and " + famous_words
"Four score and " << famous_words

#Question 7:
# If we build an array like this:
flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]
# We will end up with this "nested" array:
["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]]
# Make this into an un-nested array.
flintstones.flatten!

#Question 8:
flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
# Turn this into an array containing only two elements: Barney's name and Barney's number
flintstones.select! {|key, value| value == 2}.to_a
flintstones.assoc("Barney")