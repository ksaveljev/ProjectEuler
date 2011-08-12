require 'prime'
require 'set'

primes = Prime.each(1_000_000).to_a
primes_cache = primes.inject(Set.new) { |cache, prime| cache << prime }

sz = primes.size
consecutive_primes = []

0.upto(sz-1) do |i|
  counter = 1
  result = primes[i]

  (i+1).upto(sz-1) do |j|
    result += primes[j]
    break if result > 1_000_000
    counter += 1

    consecutive_primes << [result, counter] if primes_cache.include?(result)
  end
end

p consecutive_primes.max_by { |e| e.last }.first
