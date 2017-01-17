puts "USE THE EACH METHOD OF ARRAY TO ITERATE OVER
[1, 2, 3, 4, 5, 6, 7, 8, 9, 10] AND PRINT OUT EACH VALUE."
puts

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
# One-line version.
arr.each { |num| puts num }
# Multi-line version.
=begin
arr.each do |num|
	puts num
end
=end
puts
puts "SAME AS ABOVE, BUT ONLY PRINT VALUES
GREATER THAN 5."
puts
# One-line version.
arr.each { |num| puts num if num > 5 }
# Multi-line version.
=begin
arr.each do |num|
	if num > 5
		puts num
	else
		puts "That shit ain't greater than 5!"
	end
end
=end
puts

puts "NOW, USING THE SAME ARRAY FROM #2, USE THE 
SELECT METHOD TO EXTRACT ALL ODD NUMBERS INTO A NEW ARRAY."
puts
# One-line version.
new_arr = arr.select { |num| puts num if num.odd? }
# Multi-line version.
=begin
new_arr = arr.select do |num|
	if num.odd?
		puts num
	end
end
=end
puts new_arr
puts

puts "APPEND 11 TO THE END OF THE ORIGINAL ARRAY.
PREPEND 0 TO THE BEGINNING."
puts
puts arr.push(11)
puts arr.unshift(0)
puts

puts "GET RID OF 11 AND APPEND A 3."
puts
arr.pop
arr.push(3)
puts arr
puts

puts "GET RID OF DUPLICATES WITHOUT SPECIFICALLY
REMOVING ANY ONE VALUE."
puts
puts arr.uniq!
puts

puts "WHAT'S THE MAJOR DIFFERENCE BETWEEN AN ARRAY
AND A HASH?"
puts
puts "A hash is a data structure that stores items by 
associated keys. This is contrasted against arrays, 
which store items by an ordered index."
puts

puts "CREATE A HASH USING BOTH RUBY SYNTAXES."
puts
puts "Old syntax:"
puts sons = {:oldest => "Anthony", :middle => "Kyle", :youngest => "Bo"}
puts "New syntax:"
puts parents = {dad: "Jon", mom: "Leigh Anne"}
puts

puts "SUPPOSE YOU HAVE A HASH"
puts h = {a: 1, b: 2, c: 3, d: 4}
puts "GET THE VALUE OF KEY :b."
puts
puts h[:b]
puts 
puts "ADD TO THIS HASH THE KEY:VALUE PAIR {e:5}."
puts
puts h[:e] = 5
puts

puts "REMOVE ALL KEY:VALUE PAIRS WHOSE VALUE IS 
LESS THAN 3.5."
puts
# One-line version.
h.delete_if { |k, v| v < 3.5 }
# Mulit-line version.
=begin
h.delete_if do |k, v|
	v < 3.5
end
=end
puts h
puts

puts "CAN HASH VALUES BE ARRAYS? GIVE EXAMPLES."
puts
puts "Hash values as an array:"
puts hash = {names: ["Jon", "Leigh Anne", "Bo"]}
puts
puts "An array of hashes:"
puts arr = [{name: "Jon"}, {name: "Bo"}, {name: "Kyle"}]
puts

puts "GIVEN THE FOLLOWING DATA STRUCTURES WRITE A 
PROGRAM THAT MOVES THE INFORMATION FROM THE ARRAY INTO
THE EMPTY HASH THAT APPLIES TO THE CORRECT PERSON."
puts
contact_data = [["joe@email.com", "123 Main st.", 
	"555-123-4567"], ["sally@email.com", 
	"404 Not Found Dr.", "123-234-3454"]]
contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]
puts contacts
puts
p contact_data
puts
puts "USING THE HASH YOU CREATED FROM THE PREVIOUS 
EXERCISE, DEMONSTRATE HOW YOU WOULD ACCESS JOE'S EMAIL
AND SALLY'S PHONE NUMBER?"
puts
puts "Joe's email is: #{contacts["Joe Smith"][:email]}"
puts "Sally's phone number is: #{contacts["Sally Johnson"][:phone]}"
puts

puts "IN EXERCISE 12, WE MANUALLY SET THE CONTACTS HASH
VALUES ONE BY ONE. NOW, PROGRAMMATICALLY LOOP OR ITERATE
OVER THE CONTACTS HASH FROM EXERCISE 12 AND POPULATE
THE ASSOCIATED DATA FROM THE CONTACT_DATA ARRAY. HINT:
YOU WILL PROBABLY NEED TO ITERATE OVER ([:email, :address,
:phone]), AND SOME HELPFUL METHODS MIGHT BE THE ARRAY
shift AND first METHODS. NOTE THAT THIS EXERCISE IS ONLY
CONCERNED WITH DEALING WITH 1 ENTRY IN THE CONTACTS HASH."
puts

contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}
fields = [:email, :address, :phone]

contacts.each do |name, hash|
	fields.each do |field|
		hash[field] = contact_data.shift
	end
end
p contact_data
puts
p contacts
puts

puts "AS A BONUS SEE IF YOU CAN FIGURE OUT HOW TO MAKE IT WORK
WITH MULTIPLE ENTRIES IN THE CONTACTS HASH."
puts
contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}
fields = [:email, :address, :phone]

contacts.each do |name, hash|
  fields.each do |field|
    hash[field] = contact_data.shift
  end
end
p contact_data
puts
p contacts
puts

puts "USE RUBY'S ARRAY METHOD delete_if AND STRING METHOD
start_with? TO DELETE ALL OF THE WORDS THAT BEGIN WITH AN
\"S\" IN THE FOLLOWING ARRAY. THEN RECREATE THE arr AND
GET RID OF ALL THE WORDS THAT START WITH \"S\" OR STARTS
WITH \"W\"."
puts
arr = ["snow", "winter", "ice", "slippery",
"salted roads", "white trees"]
puts arr.delete_if { |words| words.start_with?("s") }
puts "THEN RECREATE THE ARRAY AND GET RID OF ALL OF
THE WORDS THAT START WITH \"S\" OR STARTS WITH \"W\"."
puts arr.delete_if { |words| words.start_with?("s", "w") }
puts 

puts "TAKE THE FOLLOWING ARRAY:"
puts a = ["snow", "winter", "ice", "slippery",
"salted roads", "white trees"]
puts "AND TURN IT INTO A NEW ARRAY THAT CONSISTS OF
STRINGS CONTAINING ONE WORD. LOOK INTO ARRAY'S MAP
AND FLATTEN METHODS, AS WELL AS STRING'S SPLIT METHOD."
puts 
puts a.map! { |words| words.split }
a = a.flatten
p a
puts

puts "WHAT WILL THE FOLLOWING PROGRAM OUTPUT?"
puts
hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

if hash1 == hash2
  puts "These hashes are the same!"
else
  puts "These hashes are not the same!"
end

# Output == "These hashes are the same!"
