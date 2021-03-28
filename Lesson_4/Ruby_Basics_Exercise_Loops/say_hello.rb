say_hello = true
iteration = 0

while say_hello
  puts 'Hello!'
  iteration += 1
  if iteration == 5
    say_hello = false
  end
  # say_hello = false if count == 5
end

# Using Ruby built-in method:
# 5.times do
#   puts 'Hello!'
# end

# Using loop method instead of a while loop:
# loop do
#   if say_hello
#     puts 'Hello!'
#     iteration += 1
#     if iteration == 5
#       say_hello = false
#     end
#   end
#   break if iteration == 5
# end
