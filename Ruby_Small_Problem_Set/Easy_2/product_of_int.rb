# Write a program that asks the user to enter an integer greater than 0, 
# then asks if the user wants to determine the sum or product of all 
# numbers between 1 and the entered integer.

# >> Please enter an integer greater than 0:
# 5
# >> Enter 's' to compute the sum, 'p' to compute the product.
# s
# The sum of the integers between 1 and 5 is 15.


# >> Please enter an integer greater than 0:
# 6
# >> Enter 's' to compute the sum, 'p' to compute the product.
# p
# The product of the integers between 1 and 6 is 720.

def sum_of_int(int)
  (1..int).sum
end

def product_of_int(int)
  (1..int).to_a.inject(:*)
end

def which_action(sum_or_product, int)
  if sum_or_product == "s"
    sum_of_int(int)
  elsif sum_or_product == "p"
    product_of_int(int)
  end
end

def name_of_action(sum_or_product, name)
  if sum_or_product == "s"
    name = "sum"
  elsif sum_or_product == "p"
    name = "product"
  end
end

def product_or_sum(sum_or_product)
  if sum_or_product == "s"
    p_or_s = sum_of_int
  elsif sum_or_product == "p"
    p_or_s = product_of_int
  end
end

puts "Give a number & choose to either find the sum or product of all numbers between 1 & your chosen integer!"
puts "Please enter an integer greater than 0:"
int = gets.to_i

puts "Enter 's' to compute the sum, 'p' to compute the product:"
sum_or_product = gets.downcase

# if sum_or_product == "s"
#   sum_of_int(int)
# elsif sum_or_product == "p"
#   product_of_int(int)
# end

name = ""
p_or_s = []

which_action(sum_or_product, int)

name_of_action(sum_or_product, name)

product_or_sum(sum_or_product)

puts "The #{name} of the integers between 1 and #{int} is #{p_or_s}."
