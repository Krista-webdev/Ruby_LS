# Pick out the minimum age from our current Munster family hash:
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

ages.values.min
# => 10
# #values returns an array of all values from the hash.
# Enumerable#min can be used on an array or hash. It is called on teh return value of #values to give the object with the mininmum value.
 