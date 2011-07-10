puts ((1..100).to_a.inject(0, &:+) ** 2) - (1..100).to_a.map { |x| x**2 }.inject(0, &:+) 
