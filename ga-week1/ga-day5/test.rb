def convert_to_pig_latin str
  alpha = ('a'..'z').to_a
  vowels = %w[a e i o u]
  consonants = alpha - vowels

  if vowels.include?(str[0])
    str + 'ay'
  elsif consonants.include?(str[0]) && consonants.include?(str[1])
    str[2..-1] + str[0..1] + 'ay'
  elsif consonants.include?(str[0])
    str[1..-1] + str[0] + 'ay'
  else
    str
  end
end

def test_convert_to_pig_latin(a, b) 
  if convert_to_pig_latin(a) == b
    return "passed"
  else
    return "failed"
  end
end
test_convert_to_pig_latin("AJ", "Jaay")
test_convert_to_pig_latin("Jackie", "Ackieay")
test_convert_to_pig_latin("Apple", "Appleay")
test_convert_to_pig_latin("Hello World", "Ellohay Orldway")