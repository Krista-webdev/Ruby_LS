# Amend this array so that the names are all shortened to just the first three characters:
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.map! { |name| name[0, 3] }
# This uses the String#slice method
# string[start, length] --> new_string
# For each name, start at index 0 to a length of 3.
