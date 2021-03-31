# Write a program that solicits 6 numbers from the user, then prints a message that describes whether or not the 6th number appears amongst the first 5 numbers.

numbers_array = []

def prompt(num)
  puts "Enter the #{num} number: "
end

def check_last_number(last, array)
  array.pop
  if array.include?(last)
    puts "The number #{last} apears in #{array}."
  else
    puts "The number #{last} does not appear in #{array}."
  end
end

prompt("1st")
numbers_array << first_number = gets.chomp.to_i

prompt("2nd")
numbers_array << second_number = gets.chomp.to_i

prompt("3rd")
numbers_array << third_number = gets.chomp.to_i

prompt("4th")
numbers_array << fourth_number = gets.chomp.to_i

prompt("5th")
numbers_array << fifth_number = gets.chomp.to_i

prompt("last")
numbers_array << last_number = gets.chomp.to_i
# Alternatively: don't add last_number to array, then I wouldn't need to do numbers_array.pop in method check_last_number

check_last_number(last_number, numbers_array)
