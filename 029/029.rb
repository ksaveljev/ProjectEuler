result = []

2.upto(100) do |a|
  2.upto(100) do |b|
    result << a**b
  end
end

puts result.uniq.size
