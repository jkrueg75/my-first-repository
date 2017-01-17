# Add two strings together that, 
# when concatenated, return your first 
# and last name as your full name 
# in one string.
puts "Jon" + " Krueger"

# Use the modulo operator, division,
# or a combination of both to take a 4
# digit number and find the digit in the:
# thousands, hundreds, tens, and ones place
puts a = 1575
puts a / 1000
puts a % 1000 / 100
puts a % 100 / 10
puts a % 10

# Write a program that uses a hash to store
# a list of movie titles with the year they
# came out. Then use the puts command to make 
# your program print out the year of each
# movie to the screen.
movies = { "The Exorcist" => 1973,
"Jaws" => 1975, "Star Wars" => 1977 }
puts movies["The Exorcist"]
puts movies["Jaws"]
puts movies["Star Wars"]

strength = Hash.new
strength["Pushups"] = 20
strength["Situps"] = 50
strength["Pullups"] = 10
puts strength

family = ["Jon", "Leigh Anne", "Anthony",
"Kyle", "Bo", "Hudson"]
x = 1

family.each { |name| puts name }

family.each do |name|
	puts "#{x}. #{name}"
	x += 1
end


# Write a program that outputs the factorial
# of the numbers 5, 6, 7, and 8.
puts 5 * 4 * 3 * 2 * 1
puts 6 * 5 * 4 * 3 * 2 * 1
puts 7 * 6 * 5 * 4 * 3 * 2 * 1
puts 8 * 7 * 6 * 5 * 4 * 3 * 2 * 1

# Write a program that calculates the squares of 
# 3 float numbers of your choosing and outputs
# the result to the screen.
a = 4.0 * 4.0
b = 9.7 * 9.7
c = 3.3 * 3.3 

puts a
puts b
puts c
