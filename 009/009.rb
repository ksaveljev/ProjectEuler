1.upto(1000) do |a|
  (a+1).upto(1000) do |b|
    c = Math.sqrt(a**2 + b**2).to_i
    next if c**2 != a**2 + b**2
    break if a + b + c > 1000
    puts a*b*c if a + b + c == 1000
  end
end
