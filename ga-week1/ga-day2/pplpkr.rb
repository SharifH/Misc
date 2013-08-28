#!/usr/bin/env ruby
require("json")
 
def save(name, stuff)
  File.open(name, "w") { |f|
    f.write(names.to_json)
  }
end
 
def load(name)
  File.open(name, "r") { |f|
    return JSON.parse(f.read(name))
  }
end
 
names = load("names.json")
 
save("names.json", names)