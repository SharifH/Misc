class Image
  # attr_accessor creats 'getter' and 'setter' methods (we can't see these)
		# These methods allow us to set these variables, and then access them outside of the class
	attr_accessor :title, :link, :tags, :media

# You must pass something to create a new object
# Initialize is you place to write code and set your new variables
# Inistialize is your template, and then you decide how to make it
# We passed a hash, and then pulled out what we wanted to create a new Image object

	def initialize(params)  
		@title = params["title"] 
		@link = params["link"]		
		@tag = params["tags"].split(' ') 
		@media = params["media"].values  
	end

	# We could create an instance variable called image_tag
		# But, because we are doing something fancy (a behavior, not just data)
		# We create a method

	def image_tag # Could be called 'construct_image_tag'
		@media.unshift("<img src=").push(">").join
	end 
	# This is a valid way to run this program once
		# Because @media is changed we lose original value

	# A different way to write this

	def construct_image_tag
		"<img src=" + @media + " >"
	end

end