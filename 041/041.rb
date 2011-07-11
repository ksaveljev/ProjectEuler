require 'prime'

result = 0
found = false
n = 1, 2, 3, 4, 5, 6, 7, 8, 9

while not found
  n.permutation(n.size) do |p|
    if Prime.prime?(p.join.to_i)
      found = true
      result = p.join.to_i if p.join.to_i > result
    end
  end
  n.pop
end

puts result
