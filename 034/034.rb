def fact(n)
  (1..n).inject(1, :*)
end

puts (3..100_000).select { |v| v == v.to_s.split(//).map { |n| fact(n.to_i) }.inject(0, :+) }.inject(0, :+)
