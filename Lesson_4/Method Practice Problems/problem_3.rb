# What is the return value of reject in the following code? Why?
[1, 2, 3].reject do |num|
  puts num
end

# Per docs, returns a new array whose elements are all those from self for which the block returns false or nil
# 1
# 2
# 3
# => [1, 2, 3]

# I missed this output, I thought it would return an empty array - forgot about puts returns nil!
# LS Explanation:
# Since puts always returns nil, you might think that no values would be selected and an empty array would be returned.
# The important thing to be aware of here is how reject treates the return value of the block. 
# reject returns a new array containing items where the block's return value is 'falsey'.
# In other words, if the return value was false or nil, the element would be selected.
