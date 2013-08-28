#!/usr/bin/env ruby
flag = ARGV[0]
number = ARGV[1].to_i
names = ["Josh", "Kristen", "Ricky", "Alex", "Todd", "Dave", "Sharif", "Lauren", "Megan", "Xiao", "Ian", "Theo", "Ryan", "Brian", "Alex", "Donielle", "Karl", "Elen", "Lior", "Justin"]


#controller

if ('-g' == flag && number > 0)	
		if (names.length % number == 0)
		# -g selected and number is valid;
		# names.length is divisible by number
		print names.each_slice(names.length/number).to_a
		
		else
			puts "Number not divisable by " + names.length.to_s
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


