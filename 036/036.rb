n = 1000000
s = (1...n).inject(0) do |sum, elem|
  if (elem.to_s == elem.to_s.reverse) && (elem.to_s(2) == elem.to_s(2).reverse)
    sum + elem
  else
    sum
  end
end
print s
