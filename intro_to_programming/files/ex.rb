# Exercise 1
# Let's take one file's contents as input and create 
# a new transformed file as a result.
puts simple = File.read("simple_file.txt")
original = File.new("original_file.txt", "w+")

File.open(original, "a") do |file|
	file.puts simple
end

puts File.read(original)
puts 
# Exercise 2
# Lets look at the current directory and report the 
# files that have .txt extensions
d = Dir.new(".")
while file = d.read do
	puts "#{file} has extension .txt" if File.extname(file) == ".txt"
end
# We can also do this using the Pathname class. We have 
# to require 'pathname' before using it. 
# Here's an example
puts require "pathname"
pn = Pathname.new(".")
pn.entries.each { |f| puts "#{f} has extension .txt" if f.extname == ".txt" }
puts pn.entries
puts
# Exercise 3
# To wrap up this chapter we are going to work through 
# an exercise that will show us how to interact with 
# these common file types. We will pull two files which 
# contain articles originally gathered from feedzilla 
# and slashdot. One in XML format. One in JSON. We will 
# combine the two lists to a common format, sort them, 
# and save them to CSV and XLS files.
puts require "json"
puts require "nokogiri"
puts require "axlsx"
puts require "csv"
slashdot_articles = []
File.open("slashdot.xml", "r") do |f|
	doc = Nokogiri::XML(f)
	slashdot_articles = doc.css("item").map { |i|
		{
			title: i.at_css("title").content,
			link: i.at_css("link").content,
			summary: i.at_css("description").content
		}
	}
end
# puts slashdot_articles
puts 
feedzilla_articles = []
File.open("feedzilla.json", "r") do |f|
	items = JSON.parse(f.read)
	feedzilla_articles = items["articles"].map { |a|
		{
			title: a["title"],
			link: a["url"],
			summary: a["summary"]
		}
	}
end

puts sorted_articles =  (feedzilla_articles + slashdot_articles).sort_by {|a| a[:title]}
puts
CSV.open("article.csv", "wb") do |csv|
  sorted_articles.each { |a| csv << [ a[:title], a[:link], a[:summary] ]  }
end

pkg = Axlsx::Package.new
pkg.workbook.add_worksheet(:name => "Articles") do |sheet|
 sorted_articles.each { |a| sheet.add_row [a[:title], a[:link], a[:summary]] }
end
pkg.serialize("articles.xlsx")