# Create a simple tip calculator. The program should prompt for a bill amount and a tip rate. 
# The program must compute the tip and then display both the tip and the total amount of the bill.
# Example Output:
=begin
What is the bill? 200
What is the tip percentage? 15

The tip is $30.0
The total is $230.0
=end

puts "What is the total amount of the bill?"
bill_total = gets.to_f
puts "What is the tip percentage?"
tip_percentage = gets.chomp.to_f
tip_owed = (bill_total * tip_percentage / 100).round(2)
total_owed = (bill_total + tip_owed).round(2)

puts "The tip is $#{tip_owed}"
puts "The total is $#{total_owed}"

# If the values in the example output are used( $200 bill, 15 percent tip), our results would be $30.0 and $230.0
# Using Kernal#format, changes this to output $30.00 and $230.00

puts "What is the total amount of the bill?"
bill_total = gets.to_f
puts "What is the tip percentage?"
tip_percentage = gets.chomp.to_f
tip_owed = (bill_total * tip_percentage / 100).round(2)
# tip_owed = '%.2f' % tip_owed

total_owed = (bill_total + tip_owed).round(2)
# total_owed = '%.2f' % total_owed

puts "The tip is $#{sprintf("%.2f", tip_owed)}"
puts "The total is $#{sprintf("%.2f", total_owed)}"
# Thanks to LS student loreandstory's example, this was completed.


#Method Version:
def tip_calculator
  puts "What is the total amount of the bill?"
  bill_total = gets.to_f

  puts "What is the tip percentage?"
  tip_percentage = gets.chomp.to_f

  tip_owed = (bill_total * tip_percentage / 100).round(2)
  total_owed = (bill_total + tip_owed).round(2)

  puts "The tip is $#{sprintf("%.2f", tip_owed)}"
  puts "The total is $#{sprintf("%.2f", total_owed)}"
end

tip_calculator
