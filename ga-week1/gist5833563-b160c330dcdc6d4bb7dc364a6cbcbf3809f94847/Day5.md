homework.rb
```
require('./ga-flickr')  
require('./image') 

data = GaFlickr.load()  
items = data["items"]  
images = []  

items.each { |img_hash|  
  images << Image.new(img_hash)  
}  
puts images  
# first_image = images.first  
# p first_image.title  

# first_image.title = "coolcat.jpg"  
# p first_image.title  
# images.each { |img| p img.construct_html_tag }  
# images.each { |img| p img.construct_html_tag }  
#images.to_img  

Image.rb

class Image  
  attr_accessor  :title, :link, :tags, :media, :description  


  def initialize(input_hash)  
    @title = input_hash["title"]  
    @link = input_hash["link"]  
    @tags = input_hash["tags"].split(' ')  
    @media = input_hash["media"]["m"]  
    @description = input_hash["description"]  

  end  


  def construct_html_tag
    "<img src=\"" + @media + "\">"
  end

  def to_s 
    return "#{@title} #{@link}: #{@tags.to_s}"
  end


end


class Array
  def to_img
    self.map { |img| p img.image_tag}
  end
end

