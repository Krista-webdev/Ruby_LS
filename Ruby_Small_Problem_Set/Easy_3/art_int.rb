# Write a program that prompts the user for two positive integers, and then prints the results of the following operations on those two numbers: addition, subtraction, product, quotient, remainder, and power. Do not worry about validating the input.

def addition(first_number, second_number)
  first_number + second_number
end

def subtraction(first_number, second_number)
  first_number - second_number
end

def product(first_number, second_number)
  first_number * second_number
end

def quotient(first_number, second_number)
  first_number / second_number
end

def remainder(first_number, second_number)
  first_number % second_number
end

def power(first_number, second_number)
  first_number ** second_number
end

puts "Enter the first number:"
first_number = gets.chomp.to_i

puts "Enter the second number:"
second_number = gets.chomp.to_i

p addition(first_number, second_number)

p subtraction(first_number, second_number)

p product(first_number, second_number)

p quotient(first_number, second_number)

p remainder(first_number, second_number)

p power(first_number, second_number)

#LS Solution:
def prompt(message)
  puts "==> #{message}"
end

prompt("Enter the first number:")
first_number = gets.chomp.to_i
prompt("Enter the second number:")
second_number = gets.chomp.to_i

prompt("#{first_number} + #{second_number} = #{first_number + second_number}")
prompt("#{first_number} - #{second_number} = #{first_number - second_number}")
prompt("#{first_number} * #{second_number} = #{first_number * second_number}")
prompt("#{first_number} / #{second_number} = #{first_number / second_number}")
prompt("#{first_number} % #{second_number} = #{first_number % second_number}")
prompt("#{first_number} ** #{second_number} = #{first_number**second_number}")
