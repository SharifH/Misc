array = [['a', 1], ['b', 2], ['c',3],['d', 4]]
hash = Hash[array.map {|x, y| [x, y]}]

puts hash