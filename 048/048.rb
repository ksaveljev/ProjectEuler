puts (1..1000).inject(0) { |sum, e| sum += e**e } % 10**10
