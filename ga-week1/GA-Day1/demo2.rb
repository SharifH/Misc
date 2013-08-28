#!/usr/bin/env ruby
require "json"
flag = ARGV[0]
number = ARGV[1].to_i
names=JSON.parse(IO.read("data.json"))
#IO means input output-reading/writing files
#parse take freeform text and get meaning

#controller

if ('-g' == flag && number > 0)	
		if (names.length % number == 0)
		# -g selected and number is valid;
		# names.length is divisible by number
		print names.shuffle.each_slice(names.length/number).to_a
		
		else
			puts "Use number divisable by " + names.length.to_s
		end
	

elsif ('-n' ==flag && number > 0)
	
	if number <= names.length
	# .sample is randomly pulling n number of items from the array 
		print names.sample(number)
	else
		puts "Number must be less than or equal to " + names.length.to_s
	end
else
	puts "Invalid Usage, insert group/name number larger than 0"
	
end 

#view