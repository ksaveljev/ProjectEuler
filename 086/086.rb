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

def count_of_integer_paths(longest_edge_length)
  a = longest_edge_length
  a_2 = a ** 2
  count = 0
  a_2.each_multiplier do |m|
    n = a_2 / m
    next if m > n
    next if (n+m).odd?
    b_plus_c = (n - m) / 2
    min_b = [1, b_plus_c - a].max
    max_b = b_plus_c / 2
    next if min_b > max_b
    count += max_b - min_b + 1
  end
  count
end

total = 0 
current = 0
while total < 1_000_000
  current += 1
  total += count_of_integer_paths(current)
end

puts current
