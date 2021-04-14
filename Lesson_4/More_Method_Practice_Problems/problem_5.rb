# Find the index of the first name that starts with "Be"
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.select { |name| name.start_with?("Be") }
# => ["Betty"]
# Whoops, the question asks to give the index of the name
flintstones.index { |name| name.start_with?("Be") }
# => 3

# LS Solution:
flintstones.index { |name| name[0, 2] == "Be" }
# => 3