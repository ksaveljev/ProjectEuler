p (5..12000).inject(0) { |result, d| result + (d/3..d/2).count { |n| n.gcd(d) == 1 and n * 1.0 / d  > 1.0 / 3 and n * 1.0 / d < 1.0 / 2 } }
