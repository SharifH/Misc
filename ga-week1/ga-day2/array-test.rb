require("json")

names = ["Theo", "Megan", "Bryan"]
puts "puts p \n"
puts names
File.open("my-stuff.puts", "w") { |f|
	f.write(puts(names))
}

puts "p \n"
p names
File.open("my-stuff.p, "w") { |f|
	f.write(p(names))
}

puts names.to_json
puts "puts json \n"
File.open("my-stuff.json", "w") { |f|
	f.write(names.to_json)
}