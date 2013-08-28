require './ga-flickr'
require './image'

# These are variables we will want for our program
data = GaFlickr.load
items = data["items"]
images = []

# We loop through each item in our items hash
  # We know that each of these items is a hash of image data
# We create a new instance of Image (Image.new())
	#  We use the img_hash to have data to create the new image with ( Image.new(img_hash) )
# We put each Image object into our images array ( images << Image.new )

items.each { |img_hash| # imag_hash is just a place holder (a variable)
	images << Image.new(img_hash)
}

# Instead of each, we can also use map
	# If we do this we don't need to set the images array beforehand (images = [])
images = items.map { |img_hash|
	Image.new(img_hash)
}

images.each { |img| p img.img_tag } # The image_tag method is hidden from us
images.to_img												# We don't want to know how it works outside of the class,
																		# we just trust that it does.
                                    
first_image = images.first 
  # Ruby magice to get first element in array (same as images[0])
  
p first_image.title 
  # This returns the title of the first image
  
first_image.title = 'coolcat.jpg'
  # This re-assigns the title varaible 
p first_image.title 
  # This prints the new title
  