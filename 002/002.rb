a, b = 1, 1
fibs = []

while a < 4_000_000 do
  a, b = b, a + b
  fibs << a
end

puts fibs.select(&:even?).inject(0, &:+)
