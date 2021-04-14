# Add up all of the ages from the Munster family hash:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

total_ages = 0
ages.each { |_, age| total_ages += age }
total_ages

# another way using #inject

ages.values.inject(:+)
# The method #values is called on the ages hash which returns an array of all values.
# The method #inject is called on the return of values (array of values from ages hash).
