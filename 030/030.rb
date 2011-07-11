def fifth_power(n)
  result = 0

  while n > 0
    result += (n%10)**5
    n /= 10
  end

  result
end

puts (2..1_000_000).inject(0) { |sum, e| sum += e if e == fifth_power(e); sum }
