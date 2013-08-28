#### ga_flicker.rb
**What is this?**
- It is a class

**What is it's behavior? What methods does it have?**
- It has a load method (that's it)
- Is there any data in this class?
  - There is a url which is an api
	- Do we need to know what this data is? NO!
	- All we need is load

#### homework.rb
**require**
		require 'ga_flicker'
- We just require the file
- Then we use the load method, and we get data
- All we need is the data

#### image.rb
**What does this class contain?**
- It contains methods
- It contains data
	- Title, Link, Tags
	- We pick these things out of the hash we send to image

##### attr_accessor
**What does this do?**
- Creates methods for these varaibles being readable and writeable
  - attr_reader you can read the varaible, but not change it

		image.title = 'coolcat.jpg' # will not work
		image.title # will work

	- attr_writter you can change the varaible, but not read it later

		image.title = 'coolcat.jpg' # will work
		image.title # will not work

	- attr_accessor
		
		image.title = 'coolcat.jpg' # Both of these methods will work
		image.title