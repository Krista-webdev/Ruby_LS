# Create a hash that expresses the frequency with which each letter occurs in this string:
statement = "The Flintstones Rock"

# Had to look at solution:
result = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a
letters.each do |letter|
  letter_frequency = statement.scan(letter).count
  result[letter] = letter_frequency if letter_frequency > 0
end

# Output:
# { "F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, ... }
