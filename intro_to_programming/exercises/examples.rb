# Use Ruby's Array method delete_if and String method 
# start_with? to delete all of the words that begin 
# with an "s" in the following array.

arr = ['snow', 'winter', 'ice', 'slippery', 
	'salted roads', 'white trees']

# puts arr.delete_if { |words| words.start_with?("s", "w") }
# Then recreate the arr and get rid of all of the 
# words that start with "s" or starts with "w".
# puts arr

# Take the following array:
a = ["snow", "winter", "ice", "slippery",
	"salted roads", "white trees"]
# And turn it into a new array that consists of strings
# containing one word. Look into array's map and flatten
# methods, as well as sring's split method.
puts a.map { |words| words.split }
a = a.flatten
p a