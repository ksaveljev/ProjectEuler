p = Array.new(1001, 0);

1.upto(333) do |a|
  a.upto(666) do |b|
    break if a + b > 666
    b.upto(1000) do |c|
      break if a + b + c > 1000
      if c * c == a * a + b * b
        p[a+b+c] += 1
      end
    end
  end
end

puts p.each_with_index.max[1]
