result = 1
7830457.times { result *= 2; result %= 10**10 }
puts (result * 28433 + 1) % 10**10
