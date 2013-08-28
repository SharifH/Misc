def fibinacci(n)
  return n if n < 2
  vals = [0, 1]
  (n-1).times do
    vals.push(vals[-1] + vals[-2])
  end
  return vals.last
end

puts fibinacci(n)