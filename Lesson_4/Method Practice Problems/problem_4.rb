# What is the return value of each_with_object in the following code? Why?

['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end

# => { "a" => "ant", "b" => "bear", "c" => "cat" }
# LS:
# When we invoke each_with_object, we pass in an object ({}) as an argument.
# That object is then passed into the block and its updated value is returned at the end of each iteration.
# Once each_with_object has iterated over the calling collection, it returns the initally given object, which now contains all the updates.
# In this code, we start with the hash object, {}. 
# On the first iteration, we add "a" => "ant" to the hash.
# On the second iteration, we add "b" => "bear".
# On the last iteration, we add "c" => "cat".
