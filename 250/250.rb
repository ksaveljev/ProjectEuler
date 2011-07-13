def pow(a, b, mod)
  a %= mod
  return 1 if b == 0
  half_pow = pow(a, b/2, mod)
  prod = half_pow ** 2
  prod *= a if b.odd?
  prod %= mod
end

counts = Array.new(250, 0)

for i in 1..250250
  counts[pow(i, i, 250)] += 1
end

unique_counts = counts.uniq.sort
max_count = unique_counts[-1]

@c = {}
for cnt in unique_counts
  f = 1
  @c[cnt] = Array.new(cnt+1) do |i| 
    if i == 0
      1
    else
      f *= cnt-i+1
      f /= i
    end
  end
end

totals_1 = Array.new(250, 0)
totals_1[0] = 1
totals_2 = Array.new(250, 0)
 
for i in 0...250
  totals_2.fill(0)
  n = counts[i]
  for k in 0..n
    additional_total = k*i
    number_of_combinations = @c[n][k] % 10**16
    for subtotal in 0...250
      totals_2[(subtotal + additional_total)%250] += 
        totals_1[subtotal] * number_of_combinations
    end
  end
  totals_1, totals_2 = totals_2, totals_1
  totals_1.map! {|x| x % 10**16}
end

puts totals_1[0] - 1

