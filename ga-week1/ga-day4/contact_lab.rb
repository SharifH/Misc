require("./contact")
require 'pry'
contacts = [
  Contact.new("AJ", 27, "red", "@coolaj86"),
  Contact.new("Anil", 27, "orange", "@bridgpal")
]
 
contacts.each { |c|
 puts c
}
 
aj = contacts[0]
aj.greet("Bob")
 
binding.pry