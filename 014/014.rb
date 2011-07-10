hash, max = Hash.new, [0,0]
for elem in (1...1000000) do
  k, a = 1, elem
  while elem != 1
    if hash.include?(elem) 
      k += hash[elem]
      break
    else
      if elem % 2 != 0
        elem = 3*elem + 1
      else
        elem /= 2
      end
        k += 1
    end
  end
  hash[a] = k
  max = [a,k]	if k > max[1]
end
puts max[0]
