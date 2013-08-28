**What is a variable and when do we use it?**
- Reference point to something in memory
- assigning a value to something we want to access later
- name for content

**Who picks the name?**
- the programmer
- we assign names and values

**Why do we use variables?**
- makes code more readable
- we can access the same content in multiple places

  	my_variable = Array.new

	Is this a variable name?

		124tmp

	No, because it starts with a number

	Is this a variable?

		tmp124

	Yes, but only if we assign it a value

	Note: variables should start with lowercase letters, and have underscores to break up words

**What's an object?**
- Everything is an object!
- Objecst have types
	- a_number = 123 (this is type integer)
	- a_str = 'hi' (this is type string)

**What is a loop?**
- a loop is a concept
- you can put a loop in a method

	def my_loop(my_array)
		my_array.each { |element| 
			puts element
		}
	end

- Is a loop a method? (no)
- Is a loop an object? 
	- No, because it's just an abstract idea, a concept

**What do Arrays and Hashes have in common?**
- They are both objects
- They both contain other objects
- They are both data structures
- You can iterate over them
	- What does it mean to iterate?
	- Going through something multiple things one at a time

**What's a Class?**
- It is a place for methods and variables
- It is a way to categorize objects
- Types and Classes might be the same
	- A string is of the String class
	- An array is on the Array class
	- A number is of the Fixnum class (3), or the Float class (3.0)
- A class is a template in which we put our code