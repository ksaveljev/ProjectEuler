def divisors_sum(n)
  (1..n/2).select { |v| n % v == 0 }.inject(0, :+)
end

amicable = (2..9999).select do |n|
  sum = divisors_sum(n)
  sum != n and n == divisors_sum(sum)
end

puts amicable.inject(0, :+)
