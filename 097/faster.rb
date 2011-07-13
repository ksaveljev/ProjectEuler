def modpow(base, power, modulo)
  return 1 if power == 0
  half_modpow = modpow(base, power/2, modulo)
  half_modpow **= 2
  half_modpow *= base if power.odd?
  half_modpow % modulo
end

MOD = 10**10

puts (28433 * modpow(2, 7830457, MOD) + 1) % MOD
