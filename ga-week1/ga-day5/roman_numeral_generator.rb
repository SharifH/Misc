class RomanNumeralGenerator
  TABLE = {
    1000 => "M",
    900  => "CM",
    500  => "D",
    400  => "CD",
    100  => "C",
    90   => "XC",
    50   => "L",
    40   => "XL",
    10   => "X",
    9    => "IX",
    5    => "V",
    4    => "IV",
    1    => "I",
  }
 
  # What should go here?
  def convert(number)
    
    TABLE.each_key { |key| p key > number }

     return TABLE[number]   
  end

end
p TABLE.each_key { |key| p key > 1 }
# What should this do?
# r = RomanNumeralGenerator.new
#     p r.convert(1)

# # What do we expect to be returned?

#     p r.convert(543)
