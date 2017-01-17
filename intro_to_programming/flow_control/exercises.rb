# Write a method that takes a string as argument. 
# The method should return the all-caps version of 
# the string, only if the string is longer than 10 
# characters. Example: change "hello world" to 
# "HELLO WORLD". (Hint: Ruby's String class has 
# a few methods that would be helpful. 
# Check the Ruby Docs!)
puts "Please enter a word."
word = gets.chomp

def all_caps (word)
	if word.length > 10
		word.upcase
	else
		puts "That shit is less than 10 characters, dawg."
	end
end

puts all_caps(word)

# Write a program that takes a number from 
# the user between 0 and 100 and reports back 
# whether the number is between 0 and 50, 51 
# and 100, or above 100.
# puts "Please enter a number: "
# number = gets.chomp.to_i
=begin
if number <= 50
	puts "Your number is between 0 and 50."
elsif number <= 100
	puts "Your number is between 51 and 100."
elsif number > 100
	puts "Your number is greater than 100."
else
	puts "Man, quit playing."
end
=end
# Rewrite your program from exercise 3 using 
# a case statement. Wrap the statement from 
# exercise 3 in a method and wrap this new case 
# statement in a method. Make sure they both 
# still work.
puts "Please enter a number."
number = gets.chomp.to_i

def get_number(number)
	if number < 0 
		puts "You can't enter a negative number."
	elsif number <= 50
		puts "#{number} is between 0 and 50."
	elsif number <= 100
		puts "#{number} is between 51 and 100."
	elsif number > 100
		puts "#{number} is greater than 100."
	end
end

puts get_number(number)

puts "Please enter a number."
num1 = gets.chomp.to_i

def get_case_num1(num1)
	case 
	when num1 < 0
	puts "You can't enter a negative number."
	when num1 <= 50
	puts "#{num1} is between 0 and 50."
	when num1 <= 100
	puts "#{num1} is between 51 and 100."
	when num1 > 100
	puts "#{num1} is greater than 100."
	end
end

puts get_case_num1(num1)

puts "Please enter a number."
num2 = gets.chomp.to_i

def get_case_num2(num2)
	case num2
	when num2 < 0
		puts "You can't enter a negative number."
	when 0..50
		puts "#{num2} is between 0 and 50."
	when 51..100
		puts "#{num2} is between 51 and 100."
	when num2 > 100 
		puts "#{num2} is greater than 100."
	end
end

puts get_case_num2(num2)