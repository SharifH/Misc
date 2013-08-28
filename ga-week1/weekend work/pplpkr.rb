#!/usr/bin/env ruby
require "json"

class Student
  attr_accessor :name, :email, :phone

  def initialize(name, email, phone)
    @name = name
    @email = email
    @phone = phone
  end
end


flag = ARGV[0]
number = ARGV[1].to_i
names=JSON.parse(IO.read("students.json"))
name_objects = []
for x in names["students"]
  y = Student.new(x["name"], x["email"], x["phone"])
  name_objects.push(y)
end


#controller


  if ('-g' == flag && number > 0) 
    if (name_objects.length % number == 0)
    # -g selected and number is valid;
    # names.length is divisible by number
    people = name_objects.shuffle.each_slice(name_objects.length/number).to_a
    for group in people
      puts group
    end
    else
      puts "Use number divisable by " + name_objects.length.to_s
    end
  

  elsif ('-n' ==flag && number > 0)
  
    if number <= name_objects.length
  # .sample is randomly pulling n number of items from the array 
     person = name_objects.sample(number)
     for x in person
      puts x.name
    end
   else
     puts "Number must be less than or equal to " + name_objects.length.to_s
   end
  else
    puts "Invalid Usage, insert group/name number larger than 0"
  
  end 

