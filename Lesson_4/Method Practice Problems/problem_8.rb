# How does take work? Is it destructive?

arr = [1, 2, 3, 4, 5]
arr.take(2)

# Ruby docs: take(n) --> new_array
# Returns a new array containing the first n element of self, where n is a non-negative integer; does not modify self.
# => [1, 2]
arr #=> [1, 2, 3, 4, 5] it is not destructive
