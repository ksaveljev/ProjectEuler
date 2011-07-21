require 'prime'

LIMIT = 10**10

Prime.each(1_000_000).each_with_index do |p, n_minus_1|
  n = n_minus_1 + 1
  next unless n.odd?
  rem = p * ((n*2) % p) # magick!
  if rem > LIMIT
    print n
    break
  end
end
