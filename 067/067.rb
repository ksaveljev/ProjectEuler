prev = [gets.to_i]
while s = gets
  prev = s.split.map(&:to_i).collect.with_index do |e, i|
    if i == 0
      e += prev[i]
    elsif i == prev.size
      e += prev[i-1]
    else
      e = [e+prev[i], e+prev[i-1]].max
    end
  end
end

puts prev.max
