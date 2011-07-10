res, i, s = 1, 1, ""
while s.length <= 1000000
  s << i.to_s
  res *= s[i-1].chr.to_i if [10,100,1000,10000,100000,1000000].include?(i)
  i += 1
end
puts res
