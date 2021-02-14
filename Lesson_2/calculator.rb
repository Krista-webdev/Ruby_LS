# ask the user for 2 numbers
# ask the user for type of operation to perform
# perform the operation
# output the result

# answer =  gets
# puts answer

puts "Welcome to Calculator!"
puts "What's the first number?"
num1 = gets.chomp

puts "What's the second number?"
num2 = gets.chomp

puts "What operation would you like to perform? 1) add 2) subtract 3) multiply 4) divide"
operation = gets.chomp

# if operation == "1" # All inputs will default to being strings
#   result = num1 + num2
#   # num1 and num2 are strings, therefore this will concatanate instead of performing the addition operation. Therefore, we need to convert these variables to be integers instead.
# end

if operation == "1"
  result = num1.to_i + num2.to_i
elsif operation == "2"
  result = num1.to_i - num2.to_i
elsif operation == "3"
  result = num1.to_i * num2.to_i
else
  result = num1.to_f / num2.to_f
end
# Division is a special case here because if we were to divide with a result needing a remainder, simply using result = num1.to_i / num2.to_i would not give us the remainder. Instead, we use the method to_f (to float)

puts "The result is #{result}."
# Because the if statement doesn't make a block, the result variable is available outside of the statement - hence why we can call it below

