#!/usr/bin/env ruby


require 'open-uri'
require 'json'
require "pp"


#original gist: https://gist.github.com/bridgpal/e032c851cebf6de1a968

url = "https://gist.github.com/bridgpal/e032c851cebf6de1a968/raw/820ef8ca253e9aaf986c010e235ef1141564fedc/products.json"
result = JSON.parse(open(url).read)
items=result["items"]

puts "The size of items returned per page is " + (result.fetch("items").length).to_s
puts "The following items are sold through eBay:"

result["items"].each do |item|
	if item["product"]["author"]["name"].include? "ebay"
		puts item["product"]["title"]
	end



for item in items
	product = item["product"]
	author = product["author"]
	if author["name"] =~ /eBay/
		puts product["title"]
	end
end

puts "The 23rd Item in the search result is " + (result["items"][22]["product"]["title"])

new_array = []

for item in items
	products_short = {
		name: item["product"]["title"],
		description: item["product"]["description"],
		price: item["product"]["inventories"][0]["price"],
		image_url: item["product"]["images"]
  }
  new_array.push(products_short)
end

items = result["items"]
item_array = []
items.each { |x|
	item_hash = {}
	item_hash[:product] = x["product"]["title"]
	item_hash[:description] = x["product"]["description"]
	item_hash[:price] = x["product"]["inventories"][0]["price"]
	item_hash[:url] = x["product"]["images"][0]["link"]
	item_array << item_hash
}

item_array.each{|product|
	pp product[:product] + "- $" + product[:price].to_s + "(" + product[:description] +")"
}