# Given a hash of family members, with keys as the title 
# and an array of names as the values, use Ruby's 
# built-in select method to gather only immediate 
# family members' names into a new array.
family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

immediate_family = family.select do |k, v|
	k == :sisters || k == :brothers
end

arr = immediate_family.values.flatten

p arr
puts

# Look at Ruby's merge method. Notice that it has two 
# versions. What is the difference between merge and 
# merge!? Write a program that uses both and 
# illustrate the differences.
puts h1 = { "a" => 100, "b" => 200 }
puts h2 = { "b" => 255, "c" => 300 }
puts h1.merge(h2)
puts h1
puts h2
puts 
puts h3 = { "a" => 100, "b" => 200 }
puts h4 = { "b" => 757, "c" => 300 }
puts h3.merge!(h4)
puts h3
puts h4
puts

# The difference is the merge method is non-destructive
# whereas the merge! method is destructive. The merge!
# method will permanently change your hash.

# Using some of Ruby's built-in Hash methods, write a 
# program that loops through a hash and prints all of 
# the keys. Then write a program that does the same 
# thing except printing the values. Finally, write 
# a program that prints both.
movies = { "The Exorcist" => 1973, "Jaws" => 1975,
"Star Wars" => 1977}
puts movies.keys
puts movies.values
movies.each { |k| puts k }
puts
# Alternate version:
opposites = { positive: "negative", up: "down", 
	right: "left" }
opposites.each_key { |key| puts key }
opposites.each_value { |value| puts value }
opposites.each { |key, value| 
	puts "The opposite of #{key} is #{value}" }
puts 

# What method could you use to find out if a Hash 
# contains a specific value in it? Write a program 
# to demonstrate this use.
if movies.has_value?(1977)
	puts "Fuck yeah!"
else
	puts "Aww, shit!"
end
puts

# Write a program that prints out groups of words that 
# are anagrams. Anagrams are words that have the same 
# exact letters in them but in a different order. 
words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

result = {}

words.each do |word|
  key = word.split('').sort.join
  if result.has_key?(key)
    result[key].push(word)
  else
    result[key] = [word]
  end
end

result.each do |k, v|
  puts "------"
  p v
end
puts 

# What's the difference between the following two hashes?
x = "hi there"
# x is used as a key in this hash.
puts my_hash = {x: "some value"}
# The variable above, x, is used as the key
# in the hash below.
puts my_hash2 = {x => "some value"}
