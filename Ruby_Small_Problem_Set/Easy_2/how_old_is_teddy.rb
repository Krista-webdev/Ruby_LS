# Build a program that randomly generates and prints Teddy's age. 
# To get the age, you should generate a random number between 20 and 200.
# Output: Teddy is 69 years old!
# As a method:
def how_old_is_teddy
  age = rand(20..200)
  puts "Teddy is #{age} years old!"
end

how_old_is_teddy

# OR
age = rand(20..200)
puts "Teddy is #{age} years old!"

# Modify this program to ask for a name, and then print the age for that person. 
# For an extra challenge, use "Teddy" as the name if no name is entered.
def how_old_are_you
  puts "What is your name?"
  name = gets.chomp
  if name == ""
    name = "Teddy"
  end
  age = rand(1..200)
  puts "#{name} is #{age} years old!"
end

how_old_are_you
