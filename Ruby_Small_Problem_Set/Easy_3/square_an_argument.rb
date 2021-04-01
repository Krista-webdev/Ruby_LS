# Using the multiply method from the "Multiplying Two Numbers" problem, write a method that computes the square of its argument (the square is the result of multiplying a number by itself).

def multiply(num1, num2)
  num1 * num2
end

def square(num)
  multiply(num, num)
end

square(5) == 25
square(-8) == 64

# The 'square' method is implicitly returning the return value from 'multiply(num, num)'

# What if we wanted to change this method to 'power to the n' type method using the 'multiply' method?
# Couldn't figure this out - below is an example from another student:
def multiply(a, b)
  a * b
end

def power(a, n)
  n == 0 ? 1 : multiply(a, power(a, n - 1))
end
