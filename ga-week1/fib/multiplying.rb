(1..12).each  do |row|
  list = " "
  (1..12).each{ |column| list += "#{row * column}\t"}

  puts list  
end