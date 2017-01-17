puts "hello"
puts "hi"
puts "how are you"
puts "I'm fine"

def say(words)
## <= We only make the change here!
  puts words + '.'    
end

say("hello")
say("hi")
say("how are you")
say("I'm fine")

# say.rb refactored again

def say(words='hello')
  puts words + '.'
end

say()
say("hi")
say("how are you")
say("I'm fine")

# Example of a method that modifies 
# its argument permanently
# mutate.rb

a = [1, 2, 3]

def mutate(array)
  array.pop
end

p "Before mutate method: #{a}"
mutate(a)
p "After mutate method: #{a}"

# Example of a method that does not 
# mutate the caller
# mutate.rb

a = [1, 2, 3]

def no_mutate(array)
  array.last
end

p "Before no_mutate method: #{a}"
no_mutate(a)
p "After no_mutate method: #{a}"

#return.rb
def add_three(number)
	return number + 3
end

returned_value = add_three(4)
puts returned_value