require 'prime'

def phi(n)
  n.prime_division.inject(n) { |result, d| result  - result / d.first }
end

p (1..1_000_000).max_by { |n| n.to_f / phi(n) }
