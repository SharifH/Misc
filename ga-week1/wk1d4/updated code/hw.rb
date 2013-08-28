require('./ga-flickr')
require('./image')

data = GaFlickr.load()
items = data["items"]
images = []

items.each { |img_hash|
images << Image.new(img_hash)
}
puts images

first_image = images.first

p first_image.title

first_image.title = "coolcat.jpg"

p first_image.title

images.each { |img| p img.construct_html_tag }

images.each { |img| p img.construct_html_tag }

images.to_img