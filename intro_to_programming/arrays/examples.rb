# nested array
teams = [["Joe", "Steve"], ["Frank", "Molly"], ["Dan", "Sara"]]
puts teams[1]

# sort method
family = ["Jon", "Leigh Anne", "Anthony", "Kyle", "Bo", "Hudson"]
puts family
puts family.sort

# product method
product_method = [1, 2, 3].product([4, 5])
puts product_method

# each method
a = [1, 2, 3]
a.each { |e| puts e }

# each method with modification
b = [1, 2, 3]
b.each { |e| puts e + 2 }
puts b

c = [1, 2, 3]
c.map { |x| puts x**2 }
puts c