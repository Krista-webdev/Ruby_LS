# How does count treat the block's return value? How can we find out?

['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end

# Per Ruby documentation for count with a block: issues a warning, ignores the block, and returns the count of elements eql? to obj.
# => 2
# LS Explanation:
# If a block is given, counts the number of elements for which the block returns a true value.
# From this we can conclude that count only counts an element if the block's return value evaluates to true. 
# This means that count considers the truthiness of the block's return value.
