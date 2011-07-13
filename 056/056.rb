result = 0

1.upto(100) do |a|
  1.upto(100) do |b|
    result = [result, (a**b).to_s.split(//).map(&:to_i).inject(0, :+)].max
  end
end

puts result
