# Write another method that returns true if the string passed as an argument is a palindrome, false otherwise. This time, however, your method should be case-insensitive, and it should ignore all non-alphanumeric characters. If you wish, you may simplify things by calling the palindrome? method you wrote in the previous exercise.

def palindrome?(string)
  string.downcase == string.downcase.reverse
end

def real_palindrome?(string)
  string = string.downcase.delete('^a-z0-9')
  puts palindrome?(string)
end

real_palindrome?('madam') == true
real_palindrome?('Madam') == true           # (case does not matter)
real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
real_palindrome?('356653') == true
real_palindrome?('356a653') == true
real_palindrome?('123ab321') == false

# Chances are you reached for a String#gsub here to eliminate the non-alphanumeric characters. There's nothing wrong with that, but we'll take the opportunity to use and talk about String#delete instead. #delete is an interesting method that takes arguments that sort of look like regular expressions, and then deletes everything formed by the intersection of all its arguments. See the documentation for complete details.
# For our purposes, we need to remove the non-alphanumeric characters; to do that, we tell delete to delete everything that isn't a letter or digit. We then pass the result to our original palindrome? method to determine if the cleaned up string is a palindrome.