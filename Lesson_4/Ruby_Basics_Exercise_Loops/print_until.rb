numbers = [7, 9, 13, 25, 18]
count = 0
index = 0

until count == numbers.length
  puts numbers[index]
  count += 1
  index += 1
end

# LS Solution - I never thought about just using count as my index lol
# until count == numbers.size
#   puts numbers[count]
#   count += 1
# end
