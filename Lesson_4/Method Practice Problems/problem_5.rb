# What does shift do in the following code? How can we find out?

hash = { a: 'ant', b: 'bear' }
hash.shift

# accoridng to Ruby docs: shift --> [key, value] or default_value
# Removes the first hash entry; returns a 2-element Array containing the removed key and value.
# => [:a, 'ant'] 

# LS:
# shift destructively removes the first key-value pair in hash and returns it as a two-item array.
# Removes a key-value pair from hash and returns it as the two-item array [key, value] or the hash's default value if the hash is empty.
