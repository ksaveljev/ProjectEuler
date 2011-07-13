def fact(n)
  return 1 if n == 0
  (1..n).inject(1, :*)
end

result = 0

1.upto(100) do |n|
  1.upto(n) do |r|
    result += 1 if fact(n) / (fact(r) * fact(n-r)) > 1_000_000
  end
end

puts result
