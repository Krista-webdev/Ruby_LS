# Write a method that takes one argument, a string, and returns a new string with the words in reverse order.

def reverse_sentence (str)
  str.split(" ").reverse.join(" ")
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
