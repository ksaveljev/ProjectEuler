puts (1..999).to_a.inject(0) { |sum, e| sum += e if e % 3 == 0 or e % 5 == 0; sum }
