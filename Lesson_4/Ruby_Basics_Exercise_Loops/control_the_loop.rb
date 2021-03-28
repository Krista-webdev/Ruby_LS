iterations = 1

loop do
  while iterations <= 5
  puts "Number of iterations = #{iterations}"
  iterations += 1
  end
  break
end

#LS Solution
iterations = 1

loop do
  puts "Number of iterations = #{iterations}"
  iterations += 1
  break if iterations > 5
end
