state = Numeric.new
print "2,3,"
(4..100).each do
   |i|
   (2..(Math.sqrt(i).ceil)).each do
      |thing|
      state = 1
      if (i.divmod(thing)[1] == 0)
         state = 0
         break
      end
   end
   print "#{i}\," unless (state == 0)
end 