def sieve_upto(n)
  sieve = (0..n).to_a
  sieve[0] = sieve[1] = nil
  sieve.each do |p|
    next unless p
    break if p * p > n
    (p*p).step(n, p) { |m| sieve[m] = nil }
  end
  sieve.compact
end

puts sieve_upto(500_000)[10000]
