=begin
def doubler(start)
	puts start * 2
end
doubler(start)
=end

# The start method done better.
def doubler(start)
	puts start
	if start < 100
		doubler(start * 2)
	end
end

doubler(2)


