# REGEX SECTION
puts "REGEX SECTION"

puts "powerball" =~ /b/
=begin
The expression returned a 5. 
This means that the first match that took place was at 
the fifth index of the string. Remember indices start 
counting from zero. Since 5 is a truthy value 
(i.e., in Ruby, 5 evaluates to true), we can use it 
as a boolean to check for matches.
=end
def has_a_b?(string)
	if string =~ /b/
		puts "We have a match!"
	else
		puts "No match here."
	end
end

has_a_b?("basketball")
has_a_b?("football")
has_a_b?("hockey")
has_a_b?("golf")
=begin
On top of the =~ operator, we can use the match method 
to perform regex comparisons as well. This method returns 
a MatchData object that describes the match or nil 
if there is no match.	
=end
puts /b/.match("powerball")
# You can use a MatchData object to act as a boolean 
# value in your program. Try this out:
def has_a_b?(string)
	if /b/.match(string)
		puts "We have a match!"
	else
		puts "No match here."
	end
end

has_a_b?("basketball")
has_a_b?("football")
has_a_b?("hockey")
has_a_b?("golf")
puts
# RUBY STANDARD CLASSES
puts "RUBY STANDARD CLASSES SECTION"

# Let's say you wanted to find a way to calculate the 
# square root of a number. Ruby's Math module has a 
# method called sqrt that you can use right away.
puts Math.sqrt(400)
# Using the PI constant.
puts Math::PI
# What if you wanted to calculate what specific day July 
# 4th occurred in 2008? You can use Ruby's 
# built-in Time class.
t = Time.new(2008, 7, 4)
puts t.monday?
puts t.friday?
puts
# VARIABLES AS POINTERS
puts "VARIABLES AS POINTERS SECTION"

puts a = "hi there"
puts b = a
puts a = "not here"
puts 
puts a = "hi there"
puts b = a
puts a << ", Jon"
# Examples of mutating the caller.
puts "Examples of mutating the caller."
a = [1, 2, 3, 3]
b = a
c = a.uniq
puts a, b, c, 
c = a.uniq!
puts c
puts 
def test(b)
	b.map {|letter| puts "I like the letter: #{letter}"}
end

a = ["a", "b", "c"]
test(a)
puts
# BLOCKS AND PROCS
puts "BLOCKS AND PROCS SECTION"

def take_block(&block)
	block.call
end

take_block do 
	puts "Block being called in the method!"
end
# Say we wanted to pass an argument to 
# the method as well.
def take_block(number, &block)
	block.call(number)
end

number = 42
take_block(number) do |num|
	puts "Block being called in the method! #{num}"
end
# Procs are blocks that are wrapped in a proc object 
# and stored in a variable to be passed around. 
# This is how you define a proc.
talk = Proc.new do
	puts "I am talking."
end

talk.call
# Procs can also take arguments if specified.
talk = Proc.new do |name|
	puts "I am talking to #{name}"
end

talk.call "Jon"
=begin
Procs can be passed into methods. Let's take our 
previous take_block code and modify the method to take a proc 
instead. We'll add some more functionality too.
=end
def take_proc(proc)
	[1, 2, 3, 4, 5].each do |number|
		proc.call number
	end
end

proc = Proc.new do |number|
	puts "#{number}. Proc being called in the method!"
end

take_proc(proc)
puts
# EXCEPTION HANDLING
puts "EXCEPTION HANDLING SECTION"

# Exception handling example.
names = ["Jon", "Anthony", "Kyle", "Bo", "Hudson", nil]

names.each do |name|
	begin
		puts "#{name}'s name has #{name.length} letters in it."
	rescue
		puts "Aww fuck!"
	end
end
puts 
# You can also use the rescue reserved word in-line.
num = 1
puts "Before each call"
num.each { |element| puts element } rescue puts "Can't do that!"
puts "After each call."
puts 
# We can also rescue pre-existing errors when we are 
# writing our code. Let's look at doing something like 
# that with a divide method.
def divide(number, divisor)
	begin
		answer = number/divisor
	rescue ZeroDivisionError => e
		puts e.message
	end
end

puts divide(16, 0)
puts divide(4, 0)
puts divide(14, 0)
puts
# Another TypeError example.
=begin
def greet(person)
	puts "Hello, " + person
end
puts
greet("Jon")
greet(1)
puts
=end
# Another TypeError example.
def space_out_letters(person)
  return person.split("").join(" ")
end

def greet(person)
  return "H e l l o, " + space_out_letters(person)
end

def decorate_greeting(person)
  puts "" + greet(person) + ""
end

decorate_greeting("Jon")
decorate_greeting(1)
