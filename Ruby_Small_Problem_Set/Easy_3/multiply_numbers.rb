# Create a method that takes two arguments, multiplies them together, and returns the result.

def multiply(num1, num2)
  num1 * num2
end

multiply(5, 3) #== 15

# The assignment asks that the method return the value of the result. If 'puts' was used instead, the return result is 'nil':
def multiply(n1, n2)
  puts n1 * n2
end

multiply(1, 2) # returns nil
# REMEMBER TO FOCUS ON THE METHOD'S RETURN VALUE AND NOT ITS OUTPUT! 'PUTS' RETURNS 'NIL'. 

# What happens if the first argument is an array? 
def multiply(array, num)
  array * num
end

multiply([1,2,3], 2) #== [1,2,3,1,2,3]
# because of the behavior of the * symbol, it doubles the array itself. 
