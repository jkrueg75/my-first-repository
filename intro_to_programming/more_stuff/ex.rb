# Write a program that checks if the sequence of 
# characters "lab" exists in the following strings. 
# If it does exist, print out the word.
# laboratory
# experiment
# Pans Labyrinth
# elaborate
# polar bear
def check_in(word)
	if /lab/ =~ word
		puts word
	else
		puts "No match"
	end
end

check_in("laboratory")
check_in("experiment")
check_in("Pans Labyrinth")
check_in("elaborate")
check_in("polar bear")
puts 
# What will the following program print to the screen? 
# What will it return?
def execute(&block)
	block
end

execute { puts "Hello from inside the execute method!" }
# prints: nothing
# returns: Proc:0x00000001fd1258@
puts 
# What is exception handling and what problem 
# does it solve?
=begin
Exception handling is error prevention through coding
and it keeps your program running when an error is thrown
insted of your program coming to a grinding halt.
=end
# Modify the code in exercise 2 to make the block
# execute properly.
def execute(&block)
	block.call
end

execute { puts "Hello from inside the execute method!" }



