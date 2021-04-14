ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# Remove people with the age 100 and greater:

ages.delete_if { |key, value| value >= 100 }
#  => {"Herman"=>32, "Lily"=>30, "Eddie"=>10}

# LS solution:
ages.keep_if { |_, age| age < 100 }
