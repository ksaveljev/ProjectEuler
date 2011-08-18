require 'prime'

class Integer 
  def each_multiplier
    division = self.prime_division.to_a
    n = division.length
    pows = Array.new(n, 0)
    while true
      prod = (0...n).inject(1) { |p, i| 
        p * division[i].first ** pows[i]
      }
      yield prod
      i = 0
      while i < n and pows[i] == division[i].last
        pows[i] = 0
        i += 1
      end
      break if i >= n
      pows[i] += 1
    end
  end
end

def number_of_solutions(n)
  count = 0
  n.each_multiplier do |y|
    x = n / y
    next unless (x + y) % 4 == 0
    d = (x + y) / 4
    count += 1 if d < y
  end
  count
end

print (1..1_000_000).count{|n| 10 == number_of_solutions(n)}
