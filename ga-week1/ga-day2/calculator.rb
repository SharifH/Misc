#!/usr/bin/env ruby
puts "Press 1 for simple Press 2 for advanced calculator"
def calc()
	user_input = gets.chomp
	option = user_input.to_i
	puts option
	if option == 1
		puts 'please type add for addition, sub for subtraction, div for division, or mult for multiplication.'
		command = gets.chomp
		puts command
		

		if command == 'add'
   			puts 'please put the first number in, press enter, then put in the second number, and press enter.'
				addone = gets.chomp
				addtwo = gets.chomp
					puts addone.to_f + addtwo.to_f
		end

		if command == 'sub'
   			puts 'please put the first number in, press enter, then put in the second number, and press enter.'
				subone = gets.chomp
				subtwo = gets.chomp
					puts subone.to_f - subtwo.to_f
		end

		if command == 'div'
   			puts 'please put the first number in, press enter, then put in the second number, and press enter.'
				divone = gets.chomp
				divtwo = gets.chomp
					puts divone.to_f / divtwo.to_f
		end

		if command == 'mult'
   			puts 'please put the first number in, press enter, then put in the second number, and press enter.'
				multone = gets.chomp
				multtwo = gets.chomp
					puts multone.to_f * multtwo.to_f
		end
	elsif option == 2
		
		puts 'Please input the distance of your trip'
			miles = gets().chomp().to_i
		puts 'Please enter Miles Per Gallon of your vehicle'
			mpg = gets().chomp().to_i
		puts 'Please enter Price Per Galon in your area'
			ppg = gets().chomp().to_i
		puts 'Please enter the speed in which you will be traveling'
			speed = gets().chomp().to_i
		time, cost = calc2(miles, mpg, ppg, speed)
		p "Your trip will take #{time} hours and cost $#{cost}"
	else error msg
	p user_input
end
end
def calc2(miles, mpg, ppg, speed)
		time = milescd/speed
		cost = (miles/mpg)*ppg
		return time, cost
end
calc()