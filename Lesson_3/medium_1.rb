#Question 1:
=begin
write a one-line program that creates the following output 10 times, 
with the subsequent line indented 1 space to the right:
# The Flintstones Rock!
#  The Flintstones Rock!
#   The Flintstones Rock!
=end
10.times {|num| p ' ' * num + "The Flintstones Rock!"}


#Question 2:
# The following code causes an error, why is this and what are 2 possible ways to fix it?
puts "the value of 40 + 2 is " + (40 + 2) #=> TypeError - no implicit conversion of integer to string
# you cannot concat a string and integer
#1
puts "the value of 40 + 2 is " + (40 + 2).to_s
#2
sum = 40 + 2
puts "the value of 40 + 2 is #{sum}"
# OR more simply
puts "the value of 40 + 2 is #{40 + 2}"


#Question 3:
# Alan wrote the following method, which was intended to show all of the factors of the input number:
def factors(number)
  divisor = number
  factors = []
  begin
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end until divisor == 0
  factors
end
=begin Alyssa noticed that this will fail if the input is 0, or a negative number, 
and asked Alan to change the loop. How can you make this work without using 
begin/end/until? Note that we're not looking to find the factors for 0 or 
negative numbers, but we just want to handle it gracefully instead of raising 
an exception or going into an infinite loop.
=end
def factors(number)
  divisor = number
  factors = []
  while divisor > 0 do
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end
  factors
end
# Bonus 1: What is the purpose of the number % divisor == 0 ?
# it is the solution to finding the factors of the number that was passed into the method as an argument
# if number modulo by the divisor is equal to 0, then it is a factor of number is is pushed into the array 'factors'
# Bonus 2: What is the purpose of the second-to-last line (line 8) in the method (the factors before the method's end)?
=begin
This is what is the actual return value from the method. Recall that without an explicit return statement 
in the code, the return value of the method is the last statement executed. If we omitted this line, 
the code would execute, but the return value of the method would be nil.
=end


# Question 4:
=begin
Alyssa was asked to write an implementation of a rolling buffer. Elements are added to the rolling buffer 
and if the buffer becomes full, then new elements that are added will displace the oldest elements in the 
buffer.
She wrote two implementations saying, "Take your pick. Do you like << or + for modifying the buffer?". 
Is there a difference between the two, other than what operator she chose to use to add an element to the buffer?
=end
def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end
# using << will mutate the buffer whereas using + will create a new array with the added element
=begin
Yes, there is a difference. While both methods have the same return value, in the first implementation,
the input argument called buffer will be modified and will end up being changed after rolling_buffer1 
returns. That is, the caller will have the input array that they pass in be different once the call 
returns. In the other implementation, rolling_buffer2 will not alter the caller's input argument.
=end


#Question 5:
=begin
Alyssa asked Ben to write up a basic implementation of a Fibonacci calculator. A user passes in 
two numbers, and the calculator will keep computing the sequence until some limit is reached.
Ben coded up this implementation but complained that as soon as he ran it, he got an error. 
Something about the limit variable. What's wrong with the code?
How would you fix this so that it works?
=end
limit = 15

def fib(first_num, second_num)
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1)
puts "result is #{result}"

# my fix
def fib(first_num, second_num)
  limit = 15
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1)
puts "result is #{result}"
# due to variable scope, a method definitions scope is self-contained, it cannot access
# the local variable 'limit' outside of its definition. Therefore moving the variable 'limit'
# inside of the method 'fib' makes it accessible for use within the scope of the method 'fib'
# OR.....
# LS Solution: You can make limit an additional argument to the definition of the fib method 
# and pass it in when you call fib.
def fib(first_num, second_num, limit)
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1, 15)
puts "result is #{result}"


#Question 6:
# What is the oputput of the following code:
answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer)

p answer - 8
# new_answer = mess_with_it(answer) => 50
# answer(42) is passed in as an argument for the method mess_with_it, where it is assigned
# to the parameter some_number, 8 is then added to some_number. new_answer therefore = 50

# p answer - 8  => 34
# The above method did not mutate the variable answer (instead, the value of 50 was assigned to a new
# variable, new_answer). Therefore, answer - 8 is 42 - 8, which equals 34


#Question 7:
# One day Spot was playing with the Munster family's home computer and he wrote a 
# small program to mess with their demographic data:
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

def mess_with_demographics(demo_hash)
  demo_hash.values.each do |family_member|
    family_member["age"] += 42
    family_member["gender"] = "other"
  end
end
# After writing this method, he typed the following...and before Grandpa could stop him, 
# he hit the Enter key with his tail:
mess_with_demographics(munsters)
# Did the family's data get ransacked? Why or why not?

# Yes, it has! Below I have copied LS's explanation - I struggled to explain this :/
=begin
Spot will find himself in the "dog" house for this one. The family's data is all in shambles now.
Why? Remember that in Ruby, what gets passed to a method isn't the value of the object. 
Under the hood, Ruby passes the object_id of each argument to the method. The method stores 
these object_id's internally in locally scoped (private to the method) variables (named per 
the method definition's parameter list).
So Spot's demo_hash starts off pointing to the munsters hash. His program could wind up 
replacing that with some other object id and then the family's data would be safe.
In this case, the program does not reassign demo_hash -- it just uses it as-is. So the actual 
hash object that is being messed with inside of the method IS the munsters hash.
=end



#Question 8:
# Method calls can take expressions as arguments. Suppose we define a method called rps as follows,
# which follows the classic rules of rock-paper-scissors game, but with a slight twist that it 
# declares whatever hand was used in the tie as the result of that tie.
def rps(fist1, fist2)
  if fist1 == "rock"
    (fist2 == "paper") ? "paper" : "rock"
  elsif fist1 == "paper"
    (fist2 == "scissors") ? "scissors" : "paper"
  else
    (fist2 == "rock") ? "rock" : "scissors"
  end
end
# What is the result of the following call?
puts rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock")

#Really lost on this one! My head is spinning trying to trace this! Running it in irb => "paper"
=begin
The outermost call is evaluated by determining the result of rps(rps("rock", "paper"), rps("rock", "scissors")) 
versus rock. In turn that means we need to evaluate the two separate results of rps("rock", "paper")
and rps("rock", "scissors") and later combine them by calling rps on their individual results.
Those innermost expressions will return "paper" and "rock", respectively. Calling rps on that 
input will return "paper". Which finally when evaluated against "rock" will return "paper".
=end



#Question 9:
#Given these two methods:
def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end
# What would be the return value of the following method invocation?
bar(foo)
#=> "no" 
# Why? This is because the value returned from the foo method will always be "yes"
# and "yes" == "no" will be false.
