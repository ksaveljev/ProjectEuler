a, b = 1, 1
fibs = []

while a < 4000000 do
  a, b = b, a + b
  fibs << a
end

puts fibs.reject { |x| x % 2 == 1 }.inject(0, &:+)
