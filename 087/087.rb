require 'prime'
require 'set'
N = 50_000_000

max_prime = Math.sqrt(N).to_i
primes = Prime.each(max_prime).to_a

set = Set.new

primes.each do |p_2|
  primes.each do |p_3|
    break if p_2 ** 2 + p_3 ** 3 > N
    primes.each do |p_4|
      number = p_2 ** 2 + p_3 ** 3 + p_4 ** 4
      break if number > N
      set << number
    end
  end
end

print set.size



