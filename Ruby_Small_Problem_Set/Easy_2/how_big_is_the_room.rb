# Build a program that asks a user for the length and width of a room in meters and then displays 
# the area of the room in both square meters and square feet.

# Note: 1 square meter == 10.7639 square feet

# Do not worry about validating the input at this time.

# Example outputs:
=begin   
Enter the length of the room in meters:
10
Enter the width of the room in meters:
7
The area of the room is 70.0 square meters (753.47 square feet).
=end
CONVERSION = 10.7639 # better to explain what this number is/does, so use a name like SQMETERS_TO_SQFEET instead
puts "Enter the length of the room in meters: "
length = gets.to_f
puts "Enter the width of the room in meters: "
width = gets.to_f
area_square_meters = length * width
area_square_feet = (area_square_meters * CONVERSION).round(2)
puts "The area of the room is #{area_square_meters} square meters (#{area_square_feet} square feet)."

# Modify this program to ask for the input measurements in feet, and display the results in square feet, 
# square inches, and square centimeters.

SQFEET_TO_SQINCHES = 144
SQFEET_TO_SQCM = 929.03
puts "Enter the length of the room in feet: "
length = gets.to_f
puts "Enter the width of the room in feet: "
width = gets.to_f
area_square_feet = length * width
area_square_inches = (area_square_feet * SQFEET_TO_SQINCHES).round(2)
area_square_cm = (area_square_feet * SQFEET_TO_SQCM).round(2)
puts "The area of the room is #{area_square_feet} square feet (#{area_square_inches} square inches, or #{area_square_cm} square centimeters)."
