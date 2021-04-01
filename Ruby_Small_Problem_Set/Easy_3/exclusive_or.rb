=begin
The || operator returns a truthy value if either or both of its operands are truthy, a falsey value if both operands are falsey. The && operator returns a truthy value if both of its operands are truthy, and a falsey value if either operand is falsey. This works great until you need only one of two conditions to be truthy, the so-called exclusive or.

In this exercise, you will write a function named xor that takes two arguments, and returns true if exactly one of its arguments is truthy, false otherwise. Note that we are looking for a boolean result instead of a truthy/falsy value as returned by || and &&.
=end

def xor?(operand1, operand2)
  if operand1 && !operand2
    return true
  elsif operand2 && !operand1
    return true   
  else
    return false
  end
end

xor?(5.even?, 4.even?) == true
xor?(5.odd?, 4.odd?) == true
xor?(5.odd?, 4.even?) == false
xor?(5.even?, 4.odd?) == false

# LS Solution:
def xor?(value1, value2)
  return true if value1 && !value2
  return true if value2 && !value1
  false
end
# or and even shortened version:
def xor?(value1, value2)
  !!((value1 && !value2) || (value2 && !value1))
end
# above, the !! is required to force the return value to a boolean.

=begin   
This implementation is straightforward; it simply returns true if exactly one of the values is truthy; otherwise, it returns false. The explicit false return isn't actually necessary since return true if value2 && !value1 returns nil if the condition is falsey. However, methods whose name ends in a ? should usually only return the explicit true and false values.
=end

=begin    
Can you think of a situation in which a boolean xor method would be useful? Suppose you were modeling a light at the top of a flight of stairs wired in such a way that the light can be turned on or off using either the switch at the bottom of the stairs or the switch at the top of the stairs. This is an xor configuration, and it can be modeled in ruby using the xor method. 
=end
