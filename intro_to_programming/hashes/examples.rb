# Old way of creating a hash.
old_way = {:name => "Jon"}

# Newer way of creating a hash.
new_way = {name: "Leigh Anne"}

puts old_way
puts new_way

# Many key-value pairs.
dad = {name: "Jon", height: "5 feet 8"}
puts dad

# Adding on to an existing hash.
dad[:weight] = "250 pounds"
puts dad

# Removing something from an existing hash.
dad.delete(:weight)
puts dad

# Retrieve info from a hash.
puts dad[:height]

# Merge two hashes together.
# dad.merge(new_hash)

# Iterating over hashes.
person = {name: "Jon", height: "5 ft. 8",
weight: "250 lbs.", hair: "Brown"}

person.each do |key, value|
	puts "Jon's #{key} is #{value}"
end

# Hash with optional parameters inside of a method.
def greeting(name, options = {})
	if options.empty?
		puts "Hi, my name is #{name}"
	else
		puts "Hi, my name is #{name} and I'm #{options[:age]}" + 
		" years old and I live in #{options[:city]}."
	end
end

greeting("Jon")
greeting("Jon", {age: 41, city: "Sacramento"})
# Convention commonly used by rails developers.
greeting("Kyle", age: 12, city: "Sacramento")

# A note on hash keys
{"height" => "6 ft"}     # string as key
{["height"] => "6 ft"}   # array as key
{1 => "one"}             # integer as key
{45.324 => "forty-five point something"}  # float as key
{{key: "key"} => "hash as a key"}  # hash as key

# Common hash methods.
movies = {"The Exorcist" => 1973, "Jaws" => 1975}
# The has_key? method allows you to check if a hash 
# contains a specific key. It returns a boolean value.
puts movies.has_key?("Jaws")
# The select method allows you to pass a block and will 
# return any key-value pairs that evaluate to true 
# when ran through the block.
puts movies.select { |k, v| k == "Jaws" }
puts movies.select { |k, v| (k == "Jaws") || (v == 1973) }
# The fetch method allows you to pass a given key and 
# it will return the value for that key if it exists. 
# You can also specify an option for return if that key 
# is not present. 
puts movies.fetch("The Exorcist")
puts movies.fetch("Star Wars", "That shit ain't in here.")
# The to_a method returns an array version of your hash 
# when called. Let's see it in action. It doesn't modify 
# the hash permanently though.
puts movies.to_a
# The keys and values methods return the keys or values
# in a given hash, respectively.
puts movies.keys
puts movies.values
# Notice that the returned values are in array format. 
# Because it's returning an array, you can do interesting 
# things like printing out all the keys in a hash.
movies.each { |k| puts k }
