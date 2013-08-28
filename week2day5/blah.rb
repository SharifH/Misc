require('open-uri')
require('json')

file = open('http://www.example.com')
str = file.read()
obj = JSON.parse(str)
obj