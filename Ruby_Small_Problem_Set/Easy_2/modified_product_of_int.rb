# The program "product_of_int.rb" modified to include validating user inputs:

def sum_of_int(int)
  (1..int).sum
end

def product_of_int(int)
  (1..int).to_a.inject(:*)
end

def valid_int?(int)
  int.integer? && int > 0
end

def valid_answer?(sum_or_product)
  sum_or_product == "s" || sum_or_product == "p"
end

puts "Lets find the sum or product of all numbers between 1 & your chosen integer!"

int = ""
loop do
  puts "Please enter an integer greater than 0:"
  int = gets.chomp.to_i

  if valid_int?(int)
    break
  else
    puts("Hmmm...that doesn't look like a valid number.")
  end
end

sum_or_product = ""
loop do
  puts "Enter 's' to compute the sum, 'p' to compute the product:"
  sum_or_product = gets.chomp.downcase

  if valid_answer?(sum_or_product)
    break
  else
    puts "Please input only 's' or 'p' for your answer."
  end
end

product = product_of_int(int)

sum = sum_of_int(int)

if sum_or_product == "s"
  puts "The sum of the integers between 1 and #{int} is #{sum}."
elsif sum_or_product == "p"
  puts "The product of the integers between 1 and #{int} is #{product}"
else
  puts "Oh no, that is an unknown operation!"
end
