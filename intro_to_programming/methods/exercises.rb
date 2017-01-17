# Write a program that prints a greeting message. 
# This program should contain a method called 
# greeting that takes a name as its parameter 
# and returns a string.
def greeting(name)
	puts "Hello, " + name + ". How are you doing?"
end

puts greeting("Jon")

# What do the following expressions evaluate to?
x = 2
puts x = 2
p name = "Joe"
four = "four"
print something = "nothing\n"

# Write a program that includes a method called 
# multiply that takes two arguments and returns 
# the product of the two numbers.
def multiply(num1, num2)
	new_value = num1 * num2
	new_value
end

puts multiply(8, 4)

# What will the following code print to the screen?
def scream(words)
	words = words + "!!!!"
	return
	puts words
end

scream("Yippeee")

# Edit the method in exercise #4 so that it does 
# print words on the screen. 
# What does it return now?
def scream(words)
	words = words + "!!!!"
	puts words
	return
end

scream("Yippeee")



