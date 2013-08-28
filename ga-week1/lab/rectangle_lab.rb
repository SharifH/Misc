require("./rectangle")


rect = [
  Rectangle.new(2, 8),
  Rectangle.new(5, 10)
]

rect.each { |r|
  r.inspect()
}

squar = [
  Square.new(4),
  Square.new(5)
]
squar.each { |s|
  s.inspect()
}