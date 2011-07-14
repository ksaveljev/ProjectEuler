require 'prime'

def phi(n)
  n.prime_division.inject(n) { |result, d| result  - result / d.first }
end

p (1..1_000_000).map { |n| n.to_f / phi(n) }.each_with_index.max.last + 1
