# What is the return value of the following statement? Why?

['ant', 'bear', 'caterpillar'].pop.size

#pop without an argument removes and returns the last element
#size returns the count of elements in self --> an integer
# => 11
# LS:
# pop destructively removes the last element from the calling array and returns it ('caterpillar').
# Second, size is being called on the return value of pop. 
# in other words, size is evaluating the return value of pop (which is 'caterpillar') then the final return value of 11 makes sense.
