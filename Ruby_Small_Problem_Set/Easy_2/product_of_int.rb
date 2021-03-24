# Write a program that asks the user to enter an integer greater than 0, 
# then asks if the user wants to determine the sum or product of all 
# numbers between 1 and the entered integer.

def sum_of_int(int)
  (1..int).sum
end

def product_of_int(int)
  (1..int).to_a.inject(:*)
end

puts "Lets find the sum or product of all numbers between 1 & your chosen integer!"
puts "Please enter an integer greater than 0:"
int = gets.chomp.to_i

puts "Enter 's' to compute the sum, 'p' to compute the product:"
sum_or_product = gets.chomp.downcase

product = product_of_int(int)

sum = sum_of_int(int)

if sum_or_product == "s"
  puts "The sum of the integers between 1 and #{int} is #{sum}."
elsif sum_or_product == "p"
  puts "The product of the integers between 1 and #{int} is #{product}"
else
  puts "Oh no, that is an unknown operation!"
end
