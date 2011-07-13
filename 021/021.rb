amicable = []

def divisors_sum(n)
  (1..n/2).select { |v| n % v == 0 }.inject(0, :+)
end

2.upto(9999) do |n|
  sum = divisors_sum(n)
  next if sum == n
  amicable << n if n == divisors_sum(sum)
end

puts amicable.inject(0, :+)
