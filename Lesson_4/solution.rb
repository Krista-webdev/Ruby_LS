def sum_even_number_of_row(row_number)
  rows = [] #step 1
  start_integer = 2
  (1..row_number).each do |current_row_number| #steps 2 & 3 used a range instead of a loop
    rows << create_row(start_integer, current_row_number)
    start_integer = rows.last.last + 2
  end
  # final_row_sum = 0
  # rows.last.each{ |num| final_row_sum += num }
  # final_row_sum
  rows.last.sum
end

def create_row(start_integer, row_length)
  row = [] #step 1
  current_integer = start_integer #a more accurate name for our variable since start_integer isn't quite accurate after we increment it
  loop do #steps 2-4
    row << current_integer
    current_integer += 2
    break if row.length == row_length
  end
  row #step 5
end

#---------------------------------------------------------------

# ------- Test Cases for sum_even_number_of_row method: -------
# row number: 1 --> sum of integers in row: 2
# row number: 2 --> sum of integers in row: 10
# row number: 4 --> sum of integers in row: 68
p sum_even_number_of_row(1) == 2 #true
p sum_even_number_of_row(2) == 10 #true
p sum_even_number_of_row(4) == 68 #true

# ------ Algorithm for sum_even_number_of_rows method: ---------
# 1. Create an empty 'rows' array to contain all of the rows
# 2. Create the first row and add it to the 'rows' array (will happen within step 3's loop)
# 3. Repeat step 2 until all the necessary rows have been created in accordance with the input
#     - All rows have been created when the length of the 'rows array is equal to the input integer
# 4. Sum the final row (Implementation level)
# 5. Return the sum of the final row

# -------------- Calculating the start integer: ---------------
# Rule: first integer of row == last integer of preceding row + 2
# Algorithm:
#  - Get last row of the rows array
#  - Get last integer of that row
#  - add 2 to the integer

#--------------------------------------------------------------

# --------- Test Cases for helper method, create_row: ----------
# start: 2, length: 1 --> [2]
# start: 4, length: 2 --> [4, 6]
# start: 8, length: 3 --> [8, 10, 12]
p create_row(2, 1) == [2] #true
p create_row(4, 2) == [4, 6] #true
p create_row(8, 3) == [8, 10, 12] #true

# ------- Algorithm for helper method create_row: ------------
# 1. Create an empty 'row' array to contain the integers
# 2. Add the starting integers
# 3. Increment the starting integer by 2 to get the next integer in the sequence
# 4. Repeat (think loop) steps 2/3 until the array has reached the correct length
# 5. Return the 'row' array
#---------------- Step 4 - Loop Algorithm ---------------------
# Start the loop
#   - Add the start integer to the row (step 2)
#   - Increment the start integer by 2 (step 3)
#   - Break out of the loop (if length of row equals row _length)
# --------------------------------------------------------------
