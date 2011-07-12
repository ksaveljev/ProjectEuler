require 'prime'

result = [0, 0, 0]

-999.upto(999) do |a|
  -999.upto(999) do |b|
    n = 0
    n += 1 while (n**2 + a * n + b).prime?
    result = [n, a, b] if n > result.first
  end
end

puts result[1] * result[2]
