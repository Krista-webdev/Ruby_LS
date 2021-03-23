# Build a program that displays when the user will retire and how many years she has to work till retirement.

# Example:
# What is your age? 30
# At what age would you like to retire? 70
# It's 2016. You will retire in 2056.
# You have only 40 years of work to go!

puts "What is your age?"
age = gets.to_i

puts "At what age would you like to retire?"
retire = gets.to_i

current_year = Time.now.year
years_remaining = retire - age
retirement_date = current_year + years_remaining

puts "It's #{current_year}. You will retire in #{retirement_date}."
puts "You have only #{years_remaining} years of work to go!"
