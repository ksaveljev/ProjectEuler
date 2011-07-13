t, p, h = [], [], []

144.upto(100_000) do |n|
  t << n * (n + 1) / 2
  p << n * (3 * n - 1) / 2
  h << n * (2 * n - 1)
end

p t & p & h
