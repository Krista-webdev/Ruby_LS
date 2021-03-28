# Given the array below, use loop to remove and print each name. Stop the loop once names doesn't contain any more elements.

names = ['Sally', 'Joe', 'Lisa', 'Henry']

loop do
  puts names[0]
  names.delete_at(0)
  break if names.size == 0
end

#LS Solution
loop do
  puts names.shift
  break if names.empty?
end

# to print from last to first:
loop do
  puts names.pop
  break if names.empty?
end
