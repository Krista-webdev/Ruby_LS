# Write a program that will ask for user's name. The program will then greet the user. If the user writes "name!" then the computer yells back to the user.

puts "What is your name?"
name = gets.chomp

if name.include?("!")
  puts "HELLO #{name.upcase} WHY ARE YOU SCREAMING!!??"
else
  puts "Hello #{name}."
end

#LS Solution:
print 'What is your name? '
name = gets.chomp

if name[-1] == '!'
  name = name.chop
  puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end

# Try modifying our solution to use String#chomp! and String#chop!, respectively.
puts "What is your name?"
name = gets.chomp!

if name[-1] == "!"
  name = name.chop!
  puts "HELLO #{name.upcase}! WHY ARE YOU SCREAMING!!??"
else
  puts "Hello #{name}."
end
