# outer scope variables can be accessed by inner scope
a = 1         # outer scope variable

loop do       # the block following the invocation of the `loop` method creates an inner scope
  puts a      # => 1
  a = a + 1   # "a" is re-assigned to a new value
  break       # necessary to prevent infinite loop
end

puts a        # => 2  "a" was re-assigned in the inner scope



# inner scope variables cannot be accessed in outer scope
loop do       # the block following the invocation of the `loop` method creates an inner scope
  b = 1
  break
end

puts b        # => NameError: undefined local variable or method `b' for main:Object



# peer scopes do not conflict
2.times do
  a = 'hi'
  puts a      # 'hi' <= this will be printed out twice due to the loop
end

loop do
  puts a      # => NameError: undefined local variable or method `a' for main:Object
  break
end

puts a        # => NameError: undefined local variable or method `a' for main:Object



# Nested Blocks
a = 1           # first level variable

loop do         # second level
  b = 2

  loop do       # third level
    c = 3
    puts a      # => 1
    puts b      # => 2
    puts c      # => 3
    break
  end

  puts a        # => 1
  puts b        # => 2
  puts c        # => NameError
  break
end

puts a          # => 1
puts b          # => NameError
puts c          # => NameError



#  variable shadowing
[1, 2, 3].each do |n|
  puts n
end

# But what if we have a varialbe also called n in the outer scope?:
n = 10

[1, 2, 3].each do |n|
  puts n  # outer scope variable (n = 10) is ignored and n here is in reference to the parameter |n|
end

# Variable shadowing also prevents us from making changes to the outer scope variable n:
n = 10

1.times do |n|
  n = 11
end

puts n          # => 10