# Write a program that checks to see if a number 
# appears in the array.
arr = [1, 3, 5, 7, 9, 11]
number = 3

arr.each do |num|
  if num == number
    puts "#{number} is in the array."
  end
end

# An alternate solution
if arr.include?(number)
  puts "#{number} is indeed in the array."
end

# What will the following programs return? What is 
# the value of arr after each?
arr = ["b", "a"]
arr = arr.product(Array(1..3))
arr.first.delete(arr.first.last)
puts arr

arr2 = ["b", "a"]
arr2 = arr2.product([Array(1..3)])
arr2.first.delete(arr.first.last)
puts arr2

# How do you print the word "example" from the 
# following array?
arr3 = [["test", "hello", "world"],["example", "mem"]]
puts arr3.last[0]

#What does each method return in the following example?
arr4 = [15, 7, 18, 5, 12, 8, 5, 1]

puts arr4.index(5)

# puts arr4.index[5] this results in an error

puts arr4[5]

# What is the value of a, b, and c in the following 
# program?
string = "Welcome to America!"
puts a = string[6]
puts b = string[11]
puts c = string[19]

# What is the problem and how can it be fixed?
names = ['bob', 'joe', 'susan', 'margaret']
names[3] = 'jody'
puts names

# Write a program that iterates over an array and 
# builds a new array that is the result of incrementing 
# each value in the original array by a value of 2. 
# You should have two arrays at the end of this program. 
# The original array and the new array you've created. 
# Print both arrays to the screen using the p method 
# instead of puts.
arr = [1, 2, 3, 4, 5]
new_arr = []

arr.each do |n|
  new_arr << n + 2
end

p arr
p new_arr

arr5 = [10, 20, 30]
new_array = []

arr5.each do |n|
	new_array.push n + 2
end

p arr5
p new_array