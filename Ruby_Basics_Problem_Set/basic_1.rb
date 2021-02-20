# Problem 1 - Repeat Yourself

def repeat(string, integer)
  if integer.positive?
    integer.times do
      puts string
    end
  else
    puts 'Integer must be a positive number.'
  end
end

repeat('Hello', 3)
repeat('Hello', 0)
repeat('Hello', -1)
repeat('Bye', 8)
