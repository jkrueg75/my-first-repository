# What does the each method in the following program 
# return after it is finished executing?
x = [1, 2, 3, 4, 5]
x.each do |a|
	a + 1
end

puts x

# Write a while loop that takes input from the user, 
# performs an action, and only stops when the user 
# types "STOP". Each loop can get info from the user.
x = ""
while x != "STOP" do
	puts "Hello! What's your name?"
	answer = gets.chomp
	puts "Want me to keep asking or should I STOP?"
	x = gets.chomp
end

# Use the each_with_index method to iterate through an 
# array of your creation that prints each index and 
# value of the array.
family = ["Jon", "Leigh Anne", "Anthony",
"Kyle", "Bo", "Hudson"]

family.each_with_index do |name, index|
	puts "#{index + 1}. #{name}"
end

# Different use of the each_with_index method.
hashfam = Hash.new
%w(Jon LeighAnne Anthony Kyle Bo Hudson).each_with_index { |x, i|
  hashfam[x] = i
}

puts hashfam


# Write a method that counts down to zero using recursion.
def count_to_zero(number)
  if number <= 0
    puts number
  else
    puts number
    count_to_zero(number-1)
  end
end

count_to_zero(10)
count_to_zero(20)
count_to_zero(-3)



