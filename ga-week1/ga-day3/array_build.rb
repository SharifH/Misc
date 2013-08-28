a = (1..10).to_a

#create an array with map, with numbers * 6
x = a.map {|x| x*6}



#create an array with each doing the same thing
new_empty_array = []
a.each do |x|
	new_empty_array << x*6
end


#operations that will change a
# shift/unshift pop/push