# To create a file in Ruby, we pass the name of the file 
# and the mode we want to assign to File.new.
my_file = File.new("simple_file.txt", "w+")
my_file.close

File.open("simple_file.txt", "w") { |file| file.write ("adding first line of text") }
puts File.read("simple_file.txt")
# Alternatively, we could open the file, write to it 
# and finally close it. Let's see how that works with puts:
sample = File.open("simple_file.txt", "w+")
sample.puts("another example of writing to a file.")
sample.close
puts File.read("simple_file.txt")
file_addition = File.open("simple_file.txt", "a+")
file_addition.puts("Hey, buddy! Get fucked!")
file_addition.close
puts File.read("simple_file.txt")
puts
# In this example, we open the file for reading and 
# updating with a+ mode, declare a variable file as 
# a placeholder for the file and append more text to 
# it with the shovel operator. Note that the file is 
# automatically closed after the operation (the end 
# of the block) and we can use puts or write in place 
# of <<.
File.open("simple_file.txt", "a+") do |file|
    file << "Here we are with a new line of text"
end
 # <File:simple_file.txt (closed)>
File.readlines("simple_file.txt").each do |line|
	puts line
end
puts 
puts File.read("simple_file.txt")
puts 
File.open("simple_file.txt", "a+") do |file|
	file << "Writing to files in Ruby is simple."
end
puts
File.readlines("simple_file.txt").each_with_index do |line, line_num|
	puts "#{line_num}: #{line}"
end
puts 
# Example of file.delete
File.new("dummy_file.txt", "w+")
sample = File.open("dummy_file.txt", "w")
sample.puts("This is some motherfucking dummy text.")
sample.close
puts File.read("dummy_file.txt")

File.delete("dummy_file.txt")



